FactoryBot.define do
    factory :trip  do
        id { 1 }
        driver_name { "Pedro Pereira" }
        license_plate { "ABS123" }
        created_at { "2024-04-08T16:14:35.908Z" }
        updated_at { "2024-04-08T16:14:35.908Z" }

        road
    end
end