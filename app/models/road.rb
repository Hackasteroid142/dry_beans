class Road < ApplicationRecord
    has_many :trips

    # Busca información de la ruta incluyendo sus viajes y entregas.
    # 
    # @return [Object] Ruta con información de viajes y entregas. 
    def self.with_details(road)
        road.as_json(include: { trips: { include: :deliveries } })
    end
end
