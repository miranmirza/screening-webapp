class NotesController < ApplicationController

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(candidate_id: session[:candidate_id])
    @note.update_attributes(note_params)
    if @note.save
      redirect_to candidate_path(id: @note.candidate_id)
    else
      @candidate = Candidate.find(session[:candidate_id])
      @notes = @candidate.notes
      render "candidates/show"
    end
  end

  private

  def note_params
    params.require(:note).permit(:user_id, :comment, :note_type)
  end
end
