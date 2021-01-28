class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :email, presence: true
    validates :email, uniqueness: true

    has_many :readings
    has_many :spreads, through: :readings

    ###### Create a User Model - HAVE TO ADD uid COLUMN AND STUFF STILL
    
    def self.create_with_omniauth(auth)
        create! do |user|
          user.provider = auth["provider"]
          user.uid = auth["uid"]
          user.username = auth["info"]["name"]
        end
    end

end
