class Route < ApplicationRecord
  belongs_to :bus
  belongs_to :person
end
