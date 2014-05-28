
class User < ActiveRecord::Base
  	validates :name,  presence: true, length: { maximum: 50 } #length validation
  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i #format validation
  	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, #uniqueness validation
                    uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, length: { minimum: 6 }
end