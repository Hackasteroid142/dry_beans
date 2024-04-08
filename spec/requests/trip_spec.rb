require 'rails_helper'

RSpec.describe "Trips", type: :request do
    describe "POST #create_delivery" do
        it "should create a delivery" do
            trip = create(:trip)
            delivery_params = { direction: "Calle Falsa 123", status: "PENDING", code: "P1", description: "Pesado", product_name: "Comida de perro", delivered_at: "2024-01-12" }

            post "/trips/#{trip.id}/delivery", params: { delivery: delivery_params }

            expect(response).to have_http_status(:created)
        end
    end
end
