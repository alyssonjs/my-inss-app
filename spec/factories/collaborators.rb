FactoryBot.define do
  factory :collaborator do
    name { Faker::Alphanumeric.alphanumeric(number: 22) }
    cpf { "000.000.000-00" }
    birthday { "2021-06-12" }
    address { Faker::Address.full_address }
    number { Faker::Address.building_number }
    neighborhood { "MyString" }
    city { Faker::Address.city }
    state_code { Faker::Address.state_abbr }
    postal_code  { Faker::Alphanumeric.alphanumeric(number: 10) }
    personal_phone_number { "(00) 00000-0000" }
    reference { Faker::PhoneNumber.cell_phone }
    reference_phone_number { "MyString" }
    salary { "R$ 00000-000" }
  end
end
