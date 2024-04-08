require 'rails_helper'

RSpec.describe Road, type: :model do
  it "should get details of road" do
    road = create(:road)
    trip = create(:trip, road: road)
    delivery = create(:delivery, trip: trip)

    details = Road.with_details(road)

    expect(details).to include(
      "id" => road.id,
      "trips" => [{
        "created_at"=>"2024-04-08T16:14:35.908Z", 
        "deliveries"=>[{
          "code"=>"123", 
          "created_at"=>"2024-04-08T16:14:35.908Z", 
          "delivered_at"=>"2023-12-12", 
          "description"=>"Paquete de prueba", 
          "direction"=>"Calle 123", 
          "id"=>1, 
          "product_name"=>"Prueba", 
          "status"=>"PENDING", 
          "trip_id"=>1, 
          "updated_at"=>"2024-04-08T16:14:35.908Z"
        }], 
        "driver_name"=>"Pedro Pereira", 
        "id"=>1, 
        "license_plate"=>"ABS123", 
        "road_id"=>1, 
        "updated_at"=>"2024-04-08T16:14:35.908Z"}]
    )
  end
end
