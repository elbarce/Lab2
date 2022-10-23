class Victim < ApplicationRecord
    validates :name, presence: true
    has_many :monsters, through: :attacks 
    has_many :attacks, dependent: :destroy
end
