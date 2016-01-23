class User < ActiveRecord::Base

	before_save{self.email=email.downcase}
	has_secure_password

	 validates :name, length: { in: 9..30 }
      VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
      validates :email, format: { with: VALID_EMAIL_REGEX }

       validates :password, presence: true, length: { minimum: 6 }
      validates :password_confirmation, presence: true
end
