puts 'cleaning database'
Babysitter.destroy_all
User.destroy_all

puts 'creating users'

User.create!({
  first_name: 'Anders',
  last_name: 'Berg',
  address: 'Thorvald Meyers gate 26C, 0555 Oslo, Norway',
  remote_avatar_url: 'https://images.unsplash.com/photo-1527082395-e939b847da0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
  email: 'anders@gmail.com',
  password: '123456'
})

User.create!({
  first_name: 'Jens',
  last_name: 'Pettersen',
  address: 'Sofies gate 16, 0170 Oslo, Norway',
  remote_avatar_url: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
  email: 'jens.pettersen@gmail.com',
  password: '123456'
})

User.create!({
  first_name: 'Bjorn',
  last_name: 'Haugen',
  address: 'Youngs gate 6, 0181 Oslo, Norway',
  remote_avatar_url: 'https://images.unsplash.com/photo-1502980426475-b83966705988?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=746&q=80',
  email: 'bjorn.haugen@gmail.com',
  password: '123456'
})

User.create!({
  first_name: 'Kjetil',
  last_name: 'Birkeland',
  address: 'Sørligata 40, 0181 Oslo, Norway',
  remote_avatar_url: 'https://images.unsplash.com/photo-1563241838-1734b7a0aba4?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=360&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=360',
  email: 'kjetil12@caramail.com',
  password: '123456'
})

User.create!({
  first_name: 'Knut',
  last_name: 'Olsen',
  address: 'Sørligata 40, 0651 Oslo, Norway',
  remote_avatar_url: 'https://images.unsplash.com/photo-1504810370725-2585de12e6ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
  email: 'knut88@knut.com',
  password: '123456'
})

User.create!({
  first_name: 'Lars',
  last_name: 'Andersen',
  address: 'Ruseløkkveien 3, 0251 Oslo, Norway',
  remote_avatar_url: 'https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=804&q=80',
  email: 'lars.andersen@yahoo.com',
  password: '123456'
})

User.create!({
  first_name: 'Magne',
  last_name: 'Larsen',
  address: 'Eiriks gate 2, 0650 Oslo, Norway',
  remote_avatar_url: 'https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=734&q=80',
  email: 'magne.larsen@hotmail.com',
  password: '123456'
})

User.create!({
  first_name: 'Marius',
  last_name: 'Lund',
  address: 'Øvre Slottsgate 3, 0157 Oslo, Norway',
  remote_avatar_url: 'https://images.unsplash.com/photo-1503593245033-a040be3f3c82?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
  email: 'marius.l@caramail.com',
  password: '123456'
})

User.create!({
  first_name: 'Leif',
  last_name: 'Sørensen',
  address: 'Skippergata 22, 0154 Oslo, Norway',
  remote_avatar_url: 'https://images.unsplash.com/photo-1520409364224-63400afe26e5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=716&q=80',
  email: 'sorensen@hotmail.com',
  password: '123456'
})

User.create!({
  first_name: 'Kåre',
  last_name: 'Strand',
  address: 'Akershusstranda 25, 0150 Oslo, Norway',
  remote_avatar_url: 'https://images.unsplash.com/photo-1492288991661-058aa541ff43?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
  email: 'strand@gmail.com',
  password: '123456'
})

User.create!({
  first_name: 'Anne',
  last_name: 'Lie',
  address: 'Storgata 10, Lillestrom 2000, Norway',
  remote_avatar_url: 'https://images.unsplash.com/photo-1450297350677-623de575f31c?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80',
  email: 'lie.astrid@yahoo.com',
  password: '123456'
})

User.create!({
  first_name: 'Marit',
  last_name: 'Lunde',
  address: 'Adolph Tidemands gate 29, Lillestrom 2000, Norway',
  remote_avatar_url: 'https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
  email: 'marit.lunde@caramail.com',
  password: '123456'
})

User.create!({
  first_name: 'Astrid',
  last_name: 'Berge',
  address: 'Broetergata 2, Lillestrom 2000, Norway',
  remote_avatar_url: 'https://images.unsplash.com/photo-1458662236860-b721a6735660?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
  email: 'astrid69@hotmail.com',
  password: '123456'
})

User.create!({
  first_name: 'Berit',
  last_name: 'Nygård',
  address: 'Rådmann Halmrasts vei 2, 1337 Sandvika',
  remote_avatar_url: 'https://images.unsplash.com/photo-1470092922729-762ec45090ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  email: 'me.berit@hotmail.com',
  password: '123456'
})

User.create!({
  first_name: 'Bente',
  last_name: 'Solheim',
  address: 'Rådhustorget 3, 1337 Sandvika',
  remote_avatar_url: 'https://images.unsplash.com/photo-1517365830460-955ce3ccd263?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80',
  email: 'bente@gmail.com',
  password: '123456'
})

User.create!({
  first_name: 'Aslaug',
  last_name: 'Holm',
  address: 'Elisenbergveien 22, 0265 Oslo',
  remote_avatar_url: 'https://images.unsplash.com/photo-1499651681375-8afc5a4db253?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1374&q=80',
  email: 'holm.aslaug@caramail.com',
  password: '123456'
})

User.create!({
  first_name: 'Camilla',
  last_name: 'Myhre',
  address: 'Sommerrogata 17, 0255 Oslo',
  remote_avatar_url: 'https://images.unsplash.com/photo-1505840717430-882ce147ef2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
  email: 'myhre@gmail.com',
  password: '123456'
})

User.create!({
  first_name: 'Grete',
  last_name: 'Gulbrandsen',
  address: 'Briskebyveien 31, 0260 Oslo',
  remote_avatar_url: 'https://images.unsplash.com/photo-1513673054901-2b5f51551112?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
  email: 'gulbrandsen@yahoo.com',
  password: '123456'
})

User.create!({
  first_name: 'Jorunn',
  last_name: 'Ruud Mikkelsen',
  address: 'Thorvald Meyers gate 26C, 0555 Oslo',
  remote_avatar_url: 'https://images.unsplash.com/photo-1517462964-21fdcec3f25b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
  email: 'ruud.mikkelsen.jorunn@gmail.com',
  password: '123456'
})

User.create!({
  first_name: 'Ragnhild',
  last_name: 'Rønning',
  address: 'Østre Elvebakke 7, 0182 Oslo',
  remote_avatar_url: 'https://images.unsplash.com/photo-1550525811-e5869dd03032?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80',
  email: 'ragnhild88@gmail.com',
  password: '123456'
})

puts "created #{User.count} users"
puts 'creating babysitters'

users = User.all

users.each do |user|
  Babysitter.create!({
    user_id: user.id,
    biography: Faker::Quote.matz,
    birthdate: Faker::Date.birthday(18, 40),
    price_per_hour: (100..500).to_a.sample,
  })
end

puts "created #{Babysitter.count} babysitters"

puts "creating bookings"

user = User.first
babysitter = Babysitter.last

Booking.create!({
  user_id: user.id,
  babysitter_id: babysitter.id,
  start_time: "18.07.2019".to_date,
  duration_per_hour: 3,
  price_per_hour: babysitter.price_per_hour,
  status: "completed"
})

puts "Finished!"


