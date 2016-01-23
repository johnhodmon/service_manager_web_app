class User < ActiveRecord::Base

	before_save{self.email=email.downcase}
	has_secure_password
	attr_accessor :remember_token

	 validates :name, length: { in: 9..30 }
      VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
      validates :email, format: { with: VALID_EMAIL_REGEX }

       validates :password, presence: true, length: { minimum: 6 }
      validates :password_confirmation, presence: true

      def User.digest(string)
      	  cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                      BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
      end

      def User.new_token
      	SecureRandom.urlsafe_base64
      end

      def remember
      	self.remember_token=User.new_token
      	update_attribute(:remember_digest,User.digest(remember_token))
      end

        def authenticated?(remember_token)
        BCrypt::Password.new(remember_digest).is_password?(remember_token)
      end
end
