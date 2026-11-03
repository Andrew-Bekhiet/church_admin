defmodule ChurchAdmin.Operations do
  use ChurchAdmin.Domain

  resources do
    resource ChurchAdmin.Operations.ScreenCaptureAttempt do
      define :record_screen_capture_attempt,
        action: :record_screen_capture_attempt,
        args: [:capture_kind]
    end

    resource ChurchAdmin.Operations.StudyYearRollRun
  end
end
