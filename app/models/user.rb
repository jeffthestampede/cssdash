class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :profile_img_url, :first_name, :last_name, :bio, :twitter_link, :github_link, :dribbble_link

  validates_uniqueness_of :username

  has_many :contents
  has_many :favorites
end
