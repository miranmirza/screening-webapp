class Candidate < ActiveRecord::Base
  has_many :notes
  has_many :users, through: :notes
  validates :firstname, presence: true, length: { in: 2..20 }
  validates :hangout, presence: true, if: "skype.nil?"
  validates :skype, presence: true, if: "hangout.nil?"

  scope :pending, -> {where ("status <> 'approved'")}
end
