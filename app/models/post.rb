class Post < ApplicationRecord
  mount_uploader :file, AudioFileUploader

  validates :title, :file, presence: true
  belongs_to :user
  has_many :comments  # commentsテーブルとのアソシエーション

  def self.search(search)
  #   return Post.all unless search
  #   Post.where('title LIKE(?)', "%#{search}%")
  # end
    if search
      Post.where('title LIKE(?)', "%#{search}%")
    else
    end
  end
end
