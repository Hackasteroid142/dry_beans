FactoryBot.define do
    factory :delivery  do
        id { 1 }
        direction { "Calle 123" }
        status { "PENDING" }
        code { "123" }
        description { "Paquete de prueba" }
        product_name { "Prueba" }
        delivered_at { "2023-12-12" }

        created_at { "2024-04-08T16:14:35.908Z" }
        updated_at { "2024-04-08T16:14:35.908Z" }
        trip
    end
end