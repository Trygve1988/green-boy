class Tesk < ApplicationRecord
  validates :status, presence: true
  STATUSES = [:planned, :progress, :done]
end
