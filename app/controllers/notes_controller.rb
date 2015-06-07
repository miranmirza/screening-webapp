class NotesController < ApplicationController

  def new
    @note = Note.new(candidate_id: params[:candidate_id])
  end

  def create
    note = Note.create(note_params)
    note.update_attributes(note_type: params[:note_type])
    redirect_to candidate_path(id: note.candidate_id)
  end

  private

  def note_params
    params.require(:note).permit(:candidate_id, :user_id, :comment, :not_type)
  end
end
