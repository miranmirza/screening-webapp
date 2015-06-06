class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :firstname
      t.string :lastname
      t.string :city
      t.string :state
      t.string :skype
      t.string :hangout
      t.string :status

      t.timestamps null: false
    end
  end
end
