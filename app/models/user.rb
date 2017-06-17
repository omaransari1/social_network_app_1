class User < ApplicationRecord

  acts_as_follower
  acts_as_followable
  acts_as_voter
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :posts
  has_many :comments

  mount_uploader :avatar, AvatarUploader
  mount_uploader :cover, AvatarUploader

end
