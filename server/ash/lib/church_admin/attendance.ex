defmodule ChurchAdmin.Attendance do
  use ChurchAdmin.Domain

  resources do
    resource ChurchAdmin.Attendance.AttendanceRecord
    resource ChurchAdmin.Attendance.Meeting
    resource ChurchAdmin.Attendance.MeetingDay
    resource ChurchAdmin.Attendance.RosterEntry
  end
end
