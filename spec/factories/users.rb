FactoryGirl.define do
   pw = RandomData.random_sentence
   factory :user do
     # name RandomData.random_name
     sequence(:name){|n| "#{n}"}
     sequence(:email){|n| "user#{n}@factory.com" }
     password pw
     password_confirmation pw
     role :member
   end
 end
