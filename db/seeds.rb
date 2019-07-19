puts 'cleaning database'
Babysitter.destroy_all
User.destroy_all

cities = ["Arendal", "Bergen", "Stavanger", "Drammen", "Egersund", "Farsund", "Flekkefjord", "Florø", "Fredrikstad", "Gjøvik", "Grimstad", "Halden", "Hamar", "Hammerfest", "Oslo", "Haugesund", "Holmestrand", "Horten", "Hønefoss", "Kongsberg"]

puts 'creating users'

cities.each do |city|
  User.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: "#{city}",
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    remote_avatar_url: 'https://source.unsplash.com/360x360/?face'
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
puts 'creating bookings'

babysitters = Babysitter.all
babysitters.each do |babysitter|
  Booking.create!({
    user_id: babysitter.user_id,
    babysitter_id: babysitter.id,
    start_time: Time.now + 2.hours,
    duration_per_hour: 2,
    price_per_hour: babysitter.price_per_hour,
    status: "pending"
  })
end

puts "created #{Booking.count} bookings"
puts 'creating reviews'

bookings = Booking.all
bookings.each do |booking|
  Review.create!({
    booking_id: booking.id,
    rating: (1..5).to_a.sample,
    comment: Faker::Lorem.paragraph
  })
end

puts "created #{Review.count} reviews"

puts "Finished!"


