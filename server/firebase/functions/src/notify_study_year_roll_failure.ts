import { getMessaging, SendResponse } from "firebase-admin/messaging";
import { defineSecret } from "firebase-functions/params";
import { https } from "firebase-functions/v2";
import { getFcmTokensForPermission } from "./hasura_interface";

const studyYearRollWebhookSecret = defineSecret(
  "STUDY_YEAR_ROLL_WEBHOOK_SECRET",
);

const MAINTENANCE_NOTIFICATIONS_PERMISSION = "maintenanceNotifications";

type StudyYearRollRunStatus = "succeeded" | "failed" | "missed";

interface StudyYearRollRunRow {
  id: number;
  season_year: number;
  status: StudyYearRollRunStatus;
  recorded_at: string;
  error: string | null;
  step_counts: Record<string, unknown> | null;
}

interface StudyYearRollRunInsertEvent {
  event: {
    op: string;
    data: {
      old: StudyYearRollRunRow | null;
      new: StudyYearRollRunRow | null;
    };
  };
}

export const notifyStudyYearRollFailure = https.onRequest(
  { secrets: [studyYearRollWebhookSecret] },
  async (req, res) => {
    const configuredSecret = studyYearRollWebhookSecret.value();

    if (!configuredSecret) {
      console.error(
        "STUDY_YEAR_ROLL_WEBHOOK_SECRET is not configured, rejecting request",
      );
      res.status(401).send();

      return;
    }

    if (req.header("X-Study-Year-Roll-Secret") !== configuredSecret) {
      console.error("Invalid or missing study year roll webhook secret");
      res.status(401).send();

      return;
    }

    const run = (req.body as StudyYearRollRunInsertEvent).event?.data?.new;

    if (!run || (run.status !== "failed" && run.status !== "missed")) {
      res.status(200).send();

      return;
    }

    try {
      const tokens = await getFcmTokensForPermission(
        MAINTENANCE_NOTIFICATIONS_PERMISSION,
      );

      if (tokens.length === 0) {
        console.error(
          "No maintenanceNotifications recipients for study year roll run",
          run.id,
        );

        res.status(200).send();
        return;
      }

      const errorCode = run.status === "failed"
        ? "studyYearRollFailed"
        : "studyYearRollMissed";

      const response = await getMessaging().sendEach(
        tokens.map((token) => ({
          token,
          notification: {
            title: "تنبيه صيانة",
            body: run.status === "failed"
              ? "فشلت عملية ترحيل السنة الدراسية، يرجى المراجعة"
              : "لم يتم تنفيذ عملية ترحيل السنة الدراسية في موعدها، يرجى المراجعة",
          },
          data: {
            senderUID: "system",
            code: errorCode,
            seasonYear: String(run.season_year),
            status: run.status,
          },
        })),
      );

      if (response.failureCount > 0) {
        console.error(
          "Failed to deliver some study year roll notifications",
          response.responses
            .filter((r: SendResponse) => !r.success)
            .map((r: SendResponse) => r.error),
        );
      }
    } catch (e) {
      console.error("Failed to send study year roll failure notification", e);
      res.status(500).send();

      return;
    }

    res.status(200).send();
  },
);
