defmodule ChurchAdmin.Operations do
  use Ash.Domain, otp_app: :church_admin, extensions: [AshGraphql.Domain]

  graphql do
    root_level_errors? true
  end

  resources do
    resource ChurchAdmin.Operations.StudyYearRollRun
  end
end
