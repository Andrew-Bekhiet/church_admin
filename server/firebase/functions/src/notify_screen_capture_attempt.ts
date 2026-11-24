import { defineSecret } from "firebase-functions/params";
import { https } from "firebase-functions/v2";
import { getUserName } from "./hasura_interface";
import { sendPushToHoldersOfAnyPermissionAndPruneUnregistered } from "./push/send_push_to_holders_of_any_permission_and_prune_unregistered";
import { hasuraAdminSecret } from "./secrets";

const screenCaptureWebhookSecret = defineSecret(
  "SCREEN_CAPTURE_WEBHOOK_SECRET",
);

const SCREEN_CAPTURE_NOTIFICATIONS_PERMISSION = "screenCaptureNotifications";

type ScreenCaptureKind = "screenshot" | "screen_recording";

interface ScreenCaptureAttemptRow {
  id: number;
  uid: string;
  capture_kind: ScreenCaptureKind;
  recorded_at: string;
}

interface ScreenCaptureAttemptInsertEvent {
  event: {
    op: string;
    data: {
      old: ScreenCaptureAttemptRow | null;
      new: ScreenCaptureAttemptRow | null;
    };
  };
}

const NOTIFICATION_BODY_BY_KIND: Record<
  ScreenCaptureKind,
  (userName: string) => string
> = {
  screenshot: (userName) => `قام ${userName} بأخذ لقطة شاشة من التطبيق`,
  screen_recording: (userName) => `قام ${userName} بتسجيل أو عرض شاشة التطبيق`,
};

export const notifyScreenCaptureAttempt = https.onRequest(
  { secrets: [hasuraAdminSecret, screenCaptureWebhookSecret] },
  async (req, res) => {
    const configuredSecret = screenCaptureWebhookSecret.value();

    if (!configuredSecret) {
      console.error(
        "SCREEN_CAPTURE_WEBHOOK_SECRET is not configured, rejecting request",
      );
      res.status(401).send();

      return;
    }

    if (req.header("X-Screen-Capture-Secret") !== configuredSecret) {
      console.error("Invalid or missing screen capture webhook secret");
      res.status(401).send();

      return;
    }

    const attempt = (req.body as ScreenCaptureAttemptInsertEvent).event?.data
      ?.new;

    if (!attempt) {
      res.status(200).send();

      return;
    }

    try {
      const { deliveryErrors } =
        await sendPushToHoldersOfAnyPermissionAndPruneUnregistered({
          permissions: [SCREEN_CAPTURE_NOTIFICATIONS_PERMISSION],
          payload: async () => {
            const userName = (await getUserName(attempt.uid)) ??
              "مستخدم غير معروف";

            return {
              notification: {
                title: "تنبيه أمان",
                body: NOTIFICATION_BODY_BY_KIND[attempt.capture_kind](userName),
              },
              data: {
                senderUID: attempt.uid,
                code: "screenCaptureAttempt",
                captureKind: attempt.capture_kind,
                recordedAt: attempt.recorded_at,
              },
            };
          },
        });

      if (deliveryErrors.length > 0) {
        console.error(
          "Failed to deliver some screen capture notifications",
          deliveryErrors,
        );
      }
    } catch (e) {
      console.error("Failed to send screen capture attempt notification", e);
      res.status(500).send();

      return;
    }

    res.status(200).send();
  },
);
