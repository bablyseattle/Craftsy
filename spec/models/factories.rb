FactoryBot.define do
  factory :review do
    comtent 'This is a review comment.'
    user_id 1
    product_id 1
  end


  factory :user do
    username 'User1'
    email 'email@email.com'
    password 'password'
    password_confirmation 'password'
    admin false
  end

  factory :product do
    name 'Jar'
    details 'loren epsum'
    price '15.00'
  end
end