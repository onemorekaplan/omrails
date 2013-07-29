class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:recoverable,
         :rememberable, :trackable, :validatable
  # attr_accessible :title, :body

  # Fix for a recent update to devise.
  attr_accessible :email, :password, :password_confirmation, :remember_me, :provider, :uid, :firstname, :lastname, :as => [:default, :admin]

  # Ensures that all users have a first and last name.
  validates_presence_of :firstname
  validates_presence_of :lastname
end
