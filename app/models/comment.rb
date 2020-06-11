class Comment < ApplicationRecord

  validates :text, presence: true

  belongs_to :post  # postsテーブルとのアソシエーション
  belongs_to :user  # usersテーブルとのアソシエーション
end
