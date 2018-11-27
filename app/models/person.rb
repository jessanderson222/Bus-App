class Person < ApplicationRecord
  has_many :routes, dependent: :destroy 
  has_many :buses, through: :routes
end
