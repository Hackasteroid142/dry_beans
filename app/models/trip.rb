class Trip < ApplicationRecord
  belongs_to :road
  has_many :deliveries
end
