class AddDefaultToCandidate < ActiveRecord::Migration
  def change
    change_column_default :candidates, :status, "pending"
  end
end
