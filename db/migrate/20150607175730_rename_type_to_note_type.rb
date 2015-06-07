class RenameTypeToNoteType < ActiveRecord::Migration
  def change
    rename_column :notes, :type, :note_type
  end
end
