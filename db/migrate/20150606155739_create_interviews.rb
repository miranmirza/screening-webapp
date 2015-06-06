class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :comments
      t.references :candidate

      t.timestamps null: false
    end
  end
end
