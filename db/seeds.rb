require 'open-uri'

Booking.destroy_all
CampingSpot.destroy_all
User.destroy_all

# Users

user1 = User.create!(email: 'christina@gmail.com', password: '123456', first_name: 'Christina', last_name: 'Aguilera')
user2 = User.create!(email: 'joancvisca@gmail.com', password: '123456', first_name: 'Joan', last_name: 'Visca')
user3 = User.create!(email: 'andyplat@gmail.com', password: '123456', first_name: 'Andy', last_name: 'Plat')
user4 = User.create!(email: 'michealsmith@gmail.com', password: '123456', first_name: 'Micheal', last_name: 'Smith')

# Camping Spots

camping_spot1 = CampingSpot.new(
  title: 'Garden Campsite in Banff',
  location: '801 Tunnel Mountain Rd, Banff',
  price: 50,
  capacity: 4,
  description: 'Back garden right in the heart of Banff with a view of the mountains.',
  host: user2
)
image1 = URI.open('https://www.banffadventures.com/DesktopModules/PTI/TileView/images/82/tb_cedar-hosue.jpg')
camping_spot1.photos.attach(io: image1, filename: 'camping_spot1_image1', content_type: 'image/jpg')
camping_spot1.save!

camping_spot2 = CampingSpot.new(
  title: 'Mount Royal Camping',
  location: 'Mount Royal Park, Montreal',
  price: 20,
  capacity: 3,
  description: 'Nice spot right in downtown Montreal!',
  host: user3
)
image2 = URI.open('https://afar-production.imgix.net/uploads/images/post_images/images/U2dcXC9SHe/original_MountRoyalPark.ACX-acp77466.Perry_Mastrovito.agefotostock.jpg?1525856585?ixlib=rails-0.3.0&auto=format%2Ccompress&crop=entropy&fit=crop&h=719&q=80&w=954')
camping_spot2.photos.attach(io: image2, filename: 'camping_spot2_image1', content_type: 'image/jpg')
camping_spot2.save!

camping_spot3 = CampingSpot.new(
  title: 'Camping Spot in France',
  location: '24540 Vergt-de-Biron, France',
  price: 80,
  capacity: 6,
  description: 'Lovely land in the south of France.',
  host: user4
)
image3 = URI.open('https://assets.bedful.com/images/0fcf84e7ea14a2fc73a328a8a10acce91094d747/large.jpg')
camping_spot3.photos.attach(io: image3, filename: 'camping_spot3_image1', content_type: 'image/jpg')
camping_spot3.save!

camping_spot4 = CampingSpot.new(
  title: 'Camping Mirabel',
  location: '8500 Chemin. Bourgeois, Mirabel',
  price: 30,
  capacity: 2,
  description: 'Back garden right in the heart of Banff with a view of the mountains.',
  host: user3
)
image4 = URI.open('https://static.wixstatic.com/media/de6cdb_1e15d96c468e457690d649613049a4ad~mv2.jpg/v1/fill/w_560,h_446,al_c,q_80,usm_0.66_1.00_0.01/de6cdb_1e15d96c468e457690d649613049a4ad~mv2.webp')
camping_spot4.photos.attach(io: image4, filename: 'camping_spot4_image1', content_type: 'image/jpg')
camping_spot4.save!
