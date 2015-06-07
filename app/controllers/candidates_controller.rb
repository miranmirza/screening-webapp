class CandidatesController < ApplicationController
  def index
    @pending_candidates = Candidate.all.pending
    @approved_candidates = Candidate.where(status: "approved")
    # TODO  @denied_candidates = Candidate.where(status: "denied")
  end

  def show
  end
end
