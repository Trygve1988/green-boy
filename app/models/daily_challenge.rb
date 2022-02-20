class DailyChallenge < ApplicationRecord
  belongs_to :user
  has_many :daily_tasks
end
