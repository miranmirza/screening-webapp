class Comment < ActiveRecord::Base
  belongs_to :interview
  belongs_to :user
end
