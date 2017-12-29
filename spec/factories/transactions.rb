FactoryBot.define do
  factory :transaction do
    user
    category
    date '2017-12-28'
    amount 35.99
  end
end
