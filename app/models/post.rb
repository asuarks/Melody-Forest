class Post < ApplicationRecord
  validates :title, :file, presence: true
end
