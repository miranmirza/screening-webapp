class Note < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :user
  before_save :update_candidate
  validates :comment, presence: true, length: { in: 10..2000 }
  validates :note_type, presence: true

  private

  def update_candidate
    candidate = Candidate.find(self.candidate_id)
    candidate.update_attributes(status: self.note_type)
  end
end
