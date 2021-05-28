require "open-uri"
Booking.destroy_all
Table.destroy_all
User.destroy_all

pic_one = URI.open('https://kitt.lewagon.com/placeholder/users/vincentli123')
vincent = User.create(email:"vincent@gmail.com", password: "123456")
vincent.picture.attach(io: pic_one, filename: 'nes.png', content_type: 'image/png')

pic_two = URI.open('https://kitt.lewagon.com/placeholder/users/ThesiW')
thesi = User.create(email: "theresa@gmail.com", password: "123456", username: "ThesiW", style: "The smasher", hand: "Right")
thesi.picture.attach(io: pic_two, filename: 'nes.png', content_type: 'image/png')

pic_three = URI.open('https://kitt.lewagon.com/placeholder/users/Samir9849')
samir = User.create(email: "samir@gmail.com", password: "123456", username: "Sami", style: "Ruthless", hand: "Left")
samir.picture.attach(io: pic_three, filename: 'nes.png', content_type: 'image/png')

pic_four = URI.open('https://kitt.lewagon.com/placeholder/users/claire-gtr')
claire = User.create(email: "claire@gmail.com", password: "123456", username: "claireG", style: "Undefeated", hand: "Left")
claire.picture.attach(io: pic_four, filename: 'nes.png', content_type: 'image/png')

pic_five = URI.open('https://kitt.lewagon.com/placeholder/users/rappmax')
max = User.create(email: "maxrapp@gmail.com", password: "123456", username: "Sunnyboy", style: "Relentless", hand: "Left")
max.picture.attach(io: pic_five, filename: 'nes.png', content_type: 'image/png')

pic_six = URI.open('https://kitt.lewagon.com/placeholder/users/anacolell')
ana = User.create(email:"ana@gmail.com", password: "123456")
ana.picture.attach(io: pic_six, filename: 'nes.png', content_type: 'image/png')

pic_seven = URI.open('https://kitt.lewagon.com/placeholder/users/brittafe')
britta = User.create(email: "britta@gmail.com", password: "123456", username: "BrittaF", style: "Reluctant", hand: "Left")
britta.picture.attach(io: pic_seven, filename: 'nes.png', content_type: 'image/png')

pic_eight = URI.open('https://kitt.lewagon.com/placeholder/users/danielareijs')
daniela = User.create(email: "daniela@gmail.com", password: "123456", username: "DaniR", style: "The Best", hand: "Right")
daniela.picture.attach(io: pic_eight, filename: 'nes.png', content_type: 'image/png')

pic_nine = URI.open('https://kitt.lewagon.com/placeholder/users/ruirribeiro')
rui = User.create(email: "rui@gmail.com", password: "123456", username: "rui", style: "insufficient", hand: "Left")
rui.picture.attach(io: pic_nine, filename: 'nes.png', content_type: 'image/png')

pic_ten = URI.open('https://kitt.lewagon.com/placeholder/users/dittojoe')
joe = User.create(email: "joe@gmail.com", password: "123456", username: "joseph", style: "Needs more practice", hand: "Left")
joe.picture.attach(io: pic_ten, filename: 'nes.png', content_type: 'image/png')




file = URI.open('https://images.unsplash.com/photo-1580712987356-934561958705?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2250&q=80')
table = Table.create(name: 'Finale', description: "Table is outdoors", user_id: thesi.id, date: Date.new(2021,5,28))
table.picture.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file_one = URI.open('https://images.unsplash.com/photo-1511067007398-7e4b90cfa4bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2249&q=80')
table_one = Table.create(name: 'Ping Pong', address: "T-Centralen", description: "Great table tennis surface", user_id: max.id, date: Date.new(2021,5,28))
table_one.picture.attach(io: file_one, filename: 'nes.png', content_type: 'image/png')

file_two = URI.open('https://images.unsplash.com/photo-1515773512591-dfaf9e052325?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fHBpbmclMjBwb25nJTIwdGFibGVzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
table_two = Table.create(name: 'Pingis', address: "Atlasgatan 4", description: "Great net and bats", user_id: samir.id, date: Date.new(2021,5,28))
table_two.picture.attach(io: file_two, filename: 'nes.png', content_type: 'image/png')

file_three = URI.open('https://images.unsplash.com/photo-1581343838579-c99781c88710?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTZ8fHBpbmclMjBwb25nJTIwdGFibGVzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
table_three = Table.create(name: "Embassy House", address: "Medborgarplatsen 3", description: "Excellent playing experience", user_id: vincent.id, date: Date.new(2021,5,29))
table_three.picture.attach(io: file_three, filename: 'nes.png', content_type: 'image/png')

# NEW

file_four = URI.open('https://images.unsplash.com/photo-1572025442506-64f9e3525c6b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80')
table_four = Table.create(name: "Meatballs", address: "Bondegatan 45", description: "Excellent playing experience", user_id: claire.id, date: Date.new(2021,5,29))
table_four.picture.attach(io: file_four, filename: 'nes.png', content_type: 'image/png')

file_five = URI.open('https://images.unsplash.com/photo-1546555074-91782912238c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80')
table_five = Table.create(name: "Klimato vs Le Wagon", address: "Medborgarplatsen 3", description: "Excellent playing experience", user_id: britta.id, date: Date.new(2021,5,29))
table_five.picture.attach(io: file_five, filename: 'nes.png', content_type: 'image/png')

file_six = URI.open('https://images.unsplash.com/photo-1518928286447-dc161b7cd6fb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2251&q=80')
table_six = Table.create(name: "Wild", address: "Medborgarplatsen 3", description: "Excellent playing experience", user_id: ana.id, date: Date.new(2021,5,29))
table_six.picture.attach(io: file_six, filename: 'nes.png', content_type: 'image/png')

file_seven = URI.open('https://images.unsplash.com/photo-1516703713542-594d741f66c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2250&q=80')
table_seven = Table.create(name: "Cats vs Dogs", address: "Medborgarplatsen 3", description: "Excellent playing experience", user_id: daniela.id, date: Date.new(2021,5,29))
table_seven.picture.attach(io: file_seven, filename: 'nes.png', content_type: 'image/png')

file_eight = URI.open('https://images.unsplash.com/photo-1519162952575-c6c7199502a3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2250&q=80')
table_eight = Table.create(name: "Crazy Match", address: "Nobel Museum", description: "Excellent playing experience", user_id: rui.id, date: Date.new(2021,5,29))
table_eight.picture.attach(io: file_eight, filename: 'nes.png', content_type: 'image/png')

file_nine = URI.open('https://images.unsplash.com/photo-1565101947045-7632005ba33c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2251&q=80')
table_nine = Table.create(name: "IKEA", address: "Kungsholmen", description: "Excellent playing experience", user_id: joe.id, date: Date.new(2021,5,29))
table_nine.picture.attach(io: file_nine, filename: 'nes.png', content_type: 'image/png')


booking_one = Booking.create(user_id: thesi.id, table_id: table.id)
booking_two = Booking.create(user_id: samir.id, table_id: table_two.id)
booking_three = Booking.create(user_id: max.id, table_id: table_three.id)
booking_four = Booking.create(user_id: vincent.id, table_id: table_one.id)
booking_five = Booking.create(user_id: claire.id, table_id: table_four.id)
booking_six = Booking.create(user_id: ana.id, table_id: table_six.id)
booking_seven = Booking.create(user_id: britta.id, table_id: table_five.id)
booking_eight = Booking.create(user_id: daniela.id, table_id: table_seven.id)
booking_nine = Booking.create(user_id: rui.id, table_id: table_eight.id)
booking_ten = Booking.create(user_id: joe.id, table_id: table_nine.id)

