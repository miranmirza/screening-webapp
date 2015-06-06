class Interviewscreener < ActiveRecord::Base
  belongs_to :user
  belongs_to :interview
end
