class Candidate < ActiveRecord::Base
  has_many :notes
  has_many :users, through: :notes

  scope :pending, -> {where ("status <> 'approved'")}
end
