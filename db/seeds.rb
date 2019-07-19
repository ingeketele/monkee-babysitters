puts 'cleaning database'
Babysitter.destroy_all
User.destroy_all

cities = ["Oslo", "Ski", "Lillestrøm", "Drammen", "Sandvika", "Nittedal", "Moss", "Drøbak", "Fredrikstad", "Gjøvik", "Hønefoss", "Asker", "Jessheim", "Vestby", "Skedsmokorset", "Bærums Verk", "Holmenkolle", "Nydalen, Oslo", "Storo, Oslo", "Majorstuen, Oslo"]

puts 'creating users'

User.create!(first_name: "BoB", last_name: "Bobson", address: "Mandalls gate 10, 0190 Oslo", email: "bob@bobmail.com", password: "123456")

cities.each do |city|
  rand(5..10).times do
    lat, lng = Geocoder::Calculations.random_point_near("#{city}, Norway", 30, units: :km)

    user = User.new({
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      address: "#{city}",
      email: Faker::Internet.email,
      password: Faker::Internet.password,
      avatar: 'https://source.unsplash.com/360x360/?face'
    })
    user.is_seeding = true
    user.latitude = lat if lat
    user.longitude = lng if lng
    user.save!
  end

end

puts "created #{User.count} users"
puts 'creating babysitters'

users = User.all
users.each do |user|
  Babysitter.create!({
    user_id: user.id,
    biography: Faker::Lorem.sentence(8),
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


