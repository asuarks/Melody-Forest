class Post < ApplicationRecord
  validates :title, :file, presence: true
  belongs_to :user
end
