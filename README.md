# README

# DB設計

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string||
|file|text||
|detail|text||
|user_id|integer||
### Association
belongs_to :user
has_many :comments
<!-- validates :title, :file, presence: true -->

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :posts
- has_many :comments
<!-- validates :name, presence: true -->

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|post_id|integer||
|text|text||
### Association
belongs_to :post
belongs_to :user
<!-- validates :text, presence: true -->

## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|name|string||
|avatar|string||
|description|text||
### Association
belongs_to :user

