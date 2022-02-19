class Post < ApplicationRecord
  validates_presence_of :text

  after_create_commit { broadcast_prepend_to :posts }
end
