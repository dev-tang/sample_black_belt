class User < ActiveRecord::Base
  has_secure_password

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  has_many :ideas, :dependent => :destroy
  has_many :likes, :dependent => :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: EMAIL_REGEX}
  validates :password, confirmation: true

  before_save do 
  	self.email.downcase!
  end

end
