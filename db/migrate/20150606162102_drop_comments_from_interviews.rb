class DropCommentsFromInterviews < ActiveRecord::Migration
  def change
    remove_column :interviews, :comments
  end
end
