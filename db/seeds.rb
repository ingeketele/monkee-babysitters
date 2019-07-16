puts 'cleaning database'
Babysitter.destroy_all
User.destroy_all

cities = ["Arendal", "Bergen", "Bodø", "Drammen", "Egersund", "Farsund", "Flekkefjord", "Florø", "Fredrikstad", "Gjøvik", "Grimstad", "Halden", "Hamar", "Hammerfest", "Harstad", "Haugesund", "Holmestrand", "Horten", "Hønefoss", "Kongsberg"]

puts 'creating users'

cities.each do |city|
  User.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: "#{city}",
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    avatar: 'https://source.unsplash.com/360x360/?face'
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


