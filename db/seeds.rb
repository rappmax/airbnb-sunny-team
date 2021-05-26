# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Table.create(address: "Atlasgatan 4", description: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s")
Table.create(address: "Darjeeling Ltd", description: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison")
Table.create(address: "Fantastic Mr Fox", description: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.")


require "open-uri"

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
table = Table.new(name: 'New Game', description: "Table is outdoors")
table.picture.attach(io: file, filename: 'nes.png', content_type: 'image/png')
table.save
