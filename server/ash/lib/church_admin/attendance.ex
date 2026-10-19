defmodule ChurchAdmin.Attendance do
  use Ash.Domain, otp_app: :church_admin, extensions: [AshGraphql.Domain]

  graphql do
    root_level_errors? true
  end

  resources do
    resource ChurchAdmin.Attendance.AttendanceRecord
    resource ChurchAdmin.Attendance.Meeting
    resource ChurchAdmin.Attendance.MeetingDay
    resource ChurchAdmin.Attendance.RosterEntry
  end
end
