# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Table.create(address: "Atlasgatan 4", description: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s")
# Table.create(address: "Darjeeling Ltd", description: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison")
# Table.create(address: "Fantastic Mr Fox", description: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.")


require "open-uri"
Table.destroy_all
User.destroy_all

vincent = User.create(email:"vincent@gmail.com", password: "123456")

file = URI.open("https://images.unsplash.com/photo-1564518440696-ef272968778e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHBpbmclMjBwb25nJTIwdGFibGVzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
table = Table.create(name: 'Table tennis', description: "Table is outdoors", user_id: vincent.id)
table.picture.attach(io: file, filename: 'nes.png', content_type: 'image/png')


file_two = URI.open('https://images.unsplash.com/photo-1611251135345-18c56206b863?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
table_one = Table.create(name: 'Ping Pong', address: "T-Centralen", description: "Great table tennis surface", user_id: vincent.id)
table_one.picture.attach(io: file_two, filename: 'nes.png', content_type: 'image/png')

file_two = URI.open('https://images.unsplash.com/photo-1515773512591-dfaf9e052325?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fHBpbmclMjBwb25nJTIwdGFibGVzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
table_two = Table.create(name: 'Pingis', address: "Atlasgatan 4", description: "Great net and bats", user_id: vincent.id)
table_two.picture.attach(io: file_two, filename: 'nes.png', content_type: 'image/png')

file_three = URI.open('https://images.unsplash.com/photo-1581343838579-c99781c88710?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTZ8fHBpbmclMjBwb25nJTIwdGFibGVzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
table_three = Table.create(name: "Embassy", address: "Medborgarplatsen 3", description: "Excellent playing experience", user_id: vincent.id)
table_three.picture.attach(io: file_three, filename: 'nes.png', content_type: 'image/png')



thesi = User.create(email: "theresa@gmail.com", password: "123456", username: "ThesiW", style: "The smasher", hand: "Right")
samir = User.create(email: "samir@gmail.com", password: "123456", username: "Sami", style: "Ruthless", hand: "Left")
max = User.create(email: "samir@gmail.com", password: "123456", username: "Sami", style: "Ruthless", hand: "Left")


booking_one = Booking.create(user_id: thesi.id, table_id: table_two.id)
booking_two = Booking.create(user_id: samir.id, table_id: table_two.id)
booking_three = Booking.create(user_id: max.id, table_id: table_three.id)
booking_four = Booking.create(user_id: vincent.id, table_id: table_one.id)




