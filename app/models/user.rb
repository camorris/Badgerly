class User < ApplicationRecord
    has_secure_password
    has_many :badges
    validates :email, :name, presence: true 
    validates :email, uniqueness: true
end
