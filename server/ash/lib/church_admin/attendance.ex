defmodule ChurchAdmin.Attendance do
  use ChurchAdmin.Domain

  resources do
    resource ChurchAdmin.Attendance.AttendanceRecord do
      define :mark_attendance, action: :mark_attendance
      define :update_attendance_time, action: :update_attendance_time
      define :unmark_attendance, action: :unmark_attendance
    end

    resource ChurchAdmin.Attendance.Meeting do
      define :create_meeting, action: :create_meeting
      define :update_meeting, action: :update_meeting
    end

    resource ChurchAdmin.Attendance.MeetingDay
    resource ChurchAdmin.Attendance.RosterEntry
  end
end
