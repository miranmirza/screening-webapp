class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :type
      t.references :user
      t.references :candidate

      t.text :comment
      t.timestamps null: false
    end
  end
end
