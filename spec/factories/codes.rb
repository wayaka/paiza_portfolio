FactoryBot.define do
  factory :code do
    source { 'puts' }
    user_id { '1' }
    language_id { '1' }
  end
end
