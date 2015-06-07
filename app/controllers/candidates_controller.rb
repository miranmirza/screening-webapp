class CandidatesController < ApplicationController
  def index
    @pending_candidates = Candidate.all.pending
    @approved_candidates = Candidate.where(status: "approved")
    #TODO @denied_candidates = Candidate.where(status: "denied")
  end

  def show
    @candidate = Candidate.find(params[:id])
  end

  def new
    @candidate = Candidate.new
  end

  def create
    Candidate.create(candidate_params)
    redirect_to root_path
  end

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def update
    @candidate = Candidate.find(params[:id])
    @candidate.update_attributes(candidate_params)
    redirect_to candidate_path(@candidate)
  end

  private

  def candidate_params
    params.require(:candidate).permit(:firstname, :lastname, :skype, :hangouts,
                                      :city)
  end
end
