class Road < ApplicationRecord
    has_many :trips

    def self.with_details(road)
        puts road.inspect
        road.as_json(include: { trips: { include: :deliveries } })
    end
end
