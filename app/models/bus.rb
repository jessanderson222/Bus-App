class Bus < ApplicationRecord
  has_many :routes, dependent: :destroy
  has_many :people, through: :routes

  validates :name, length: { in: 2..5}, uniqueness: true 
end
