class RenameInterviewscreenerToAttendance < ActiveRecord::Migration
  def change
    rename_table :interviewscreeners, :attendances
  end
end
