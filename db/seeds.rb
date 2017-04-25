# require 'random_data'
# create users
5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Space.star + Faker::Internet.password
  )
end
users = User.all

 # Create items
 50.times do
   Item.create!(
     user: users.sample,
     name:  Faker::Hipster.sentence,
   )
 end
 wikis = Item.all

user = User.first
user.update_attributes!(
  email: 'malloryworks@gmail.com',
  password: 'password'
)

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Item.count} items created"
