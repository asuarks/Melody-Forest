class Post < ApplicationRecord
  mount_uploader :file, AudioFileUploader

  validates :title, :file, presence: true
  belongs_to :user
  has_many :comments  # commentsテーブルとのアソシエーション
end
