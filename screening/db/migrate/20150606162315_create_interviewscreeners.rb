class CreateInterviewscreeners < ActiveRecord::Migration
  def change
    create_table :interviewscreeners do |t|
      t.references :user, index: true, foreign_key: true
      t.references :interview, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
