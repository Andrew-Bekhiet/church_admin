import { defineSecret } from "firebase-functions/params";
import { https } from "firebase-functions/v2";
import { sendPushToHoldersOfAnyPermissionAndPruneUnregistered } from "./push/send_push_to_holders_of_any_permission_and_prune_unregistered";
import { hasuraAdminSecret } from "./secrets";

const studyYearRollWebhookSecret = defineSecret(
  "STUDY_YEAR_ROLL_WEBHOOK_SECRET",
);

const APP_MAINTENANCE_PERMISSION_NAMES = [
  "appMaintenance",
  "maintenanceNotifications",
];

const NON_USER_SENDER_UID = "LOCAL_NOTIFICATION_SENDER_UID";

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
  { secrets: [hasuraAdminSecret, studyYearRollWebhookSecret] },
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
      const errorCode = run.status === "failed"
        ? "studyYearRollFailed"
        : "studyYearRollMissed";

      const { targetCount, deliveryErrors } =
        await sendPushToHoldersOfAnyPermissionAndPruneUnregistered({
          permissions: APP_MAINTENANCE_PERMISSION_NAMES,
          buildPayload: () => ({
            notification: {
              title: "تنبيه صيانة",
              body: run.status === "failed"
                ? "فشلت عملية ترحيل السنة الدراسية، يرجى المراجعة"
                : "لم يتم تنفيذ عملية ترحيل السنة الدراسية في موعدها، يرجى المراجعة",
            },
            data: {
              senderUID: NON_USER_SENDER_UID,
              code: errorCode,
              seasonYear: String(run.season_year),
              status: run.status,
            },
          }),
        });

      if (targetCount === 0) {
        console.error(
          "No app maintenance recipients for study year roll run",
          run.id,
        );
      }

      if (deliveryErrors.length > 0) {
        console.error(
          "Failed to deliver some study year roll notifications",
          deliveryErrors,
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
