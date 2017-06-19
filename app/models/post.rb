class Post < ApplicationRecord
  belongs_to :user

  acts_as_commentable
  acts_as_votable

  mount_uploader :attachment, AvatarUploader

  validates_presence_of :content
  validates_presence_of :user
end
