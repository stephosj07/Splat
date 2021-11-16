# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CampingSpot.destroy_all
User.destroy_all

user1 = User.create!(email: 'christina_plants@gmail.com', password: '123456', first_name: 'Christina', last_name: 'aguilera')
user2 = User.create!(email: 'joancvisca@gmail.com', password: '123456', first_name: 'Joan', last_name: 'visca')
user3 = User.create!(email: 'andyplat@gmail.com', password: '123456', first_name: 'Andy', last_name: 'plat')
user4 = User.create!(email: 'michealsmith@gmail.com', password: '123456', first_name: 'Micheal', last_name: 'Smith')

CampingSpot.create!(location: '302 banff avenue', price: 20, capacity: 4, description: 'back garden right in the hart of Banff with a view on the montains', host: user1)
CampingSpot.create!(location: '14 saint petersburg avenue', price: 14, capacity: 6, description: 'lovely land in the south of france', host: user4)
CampingSpot.create!(location: '206 sherbrook road', price: 20, capacity: 3, description: 'spot in montreal', host: user2)
CampingSpot.create!(location: '36 prince street', price: 6, capacity: 10, description: 'big peace of land on a budget', host: user3 )
