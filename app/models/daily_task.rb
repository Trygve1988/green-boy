class DailyTask < ApplicationRecord
  belongs_to :daily_challenge
  belongs_to :task
end
