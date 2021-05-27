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

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
table = Table.create(name: 'New Game', description: "Table is outdoors", user_id: vincent.id)
table.picture.attach(io: file, filename: 'nes.png', content_type: 'image/png')


file_two = URI.open('https://images.unsplash.com/photo-1611251135345-18c56206b863?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
table_two = Table.create(address: "T-Centralen", description: "Great table tennis surface", user_id: vincent.id)
table_two.picture.attach(io: file_two, filename: 'nes.png', content_type: 'image/png')

file_two = URI.open('https://images.unsplash.com/photo-1611251135345-18c56206b863?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
table_two = Table.create(address: "Atlasgatan 4", description: "Great net and bats", user_id: vincent.id)
table_two.picture.attach(io: file_two, filename: 'nes.png', content_type: 'image/png')

file_three = URI.open('https://images.unsplash.com/photo-1611251135345-18c56206b863?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
table_three = Table.create(address: "Medborgarplatsen 3", description: "Excellent playing experience", user_id: vincent.id)
table_three.picture.attach(io: file_three, filename: 'nes.png', content_type: 'image/png')
