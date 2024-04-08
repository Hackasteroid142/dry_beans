# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Road.create(company_name: "Cloud SpA.", code: "C102")

Trip.create(driver_name: "Gabriel Urrutia", license_plate: "ABC123", road_id: 1)
Trip.create(driver_name: "Sofía Pereira", license_plate: "FJA123", road_id: 1)

Delivery.create(direction: "Calle Falsa 123", status: "PENDING", code: "P1", description: "Pesado", product_name: "Comida de perro", delivered_at: "2024-01-12", trip_id: 1)
