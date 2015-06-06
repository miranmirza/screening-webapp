class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :skype
      t.string :role

      t.timestamps null: false
    end
  end
end
