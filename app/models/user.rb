class User < ApplicationRecord
  has_many :projects

  mount_uploader :avatar, AvatarUploader

  validates_presence_of :first_name
  validates_presence_of :last_name

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
