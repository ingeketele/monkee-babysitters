puts 'cleaning database'
Babysitter.destroy_all
User.destroy_all

puts 'creating users'

20.times do
  User.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.full_address,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  })
end

puts "created #{User.count} users"
puts 'creating babysitters'

users = User.all
users.each do |user|
  Babysitter.create!({
    user_id: user.id,
    biography: Faker::Lorem.paragraph,
    birthdate: Faker::Date.birthday(16, 65),
    price_per_hour: (100..500).to_a.sample
  })
end

puts "created #{Babysitter.count} babysitters"

puts "Finished!"
