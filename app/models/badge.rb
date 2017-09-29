class Badge < ApplicationRecord
    belongs_to :user
    validates :course, :website, :date, :purpose, presence: true 
end
