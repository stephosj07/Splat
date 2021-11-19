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

image1_1 = URI.open('https://www.planetware.com/wpimages/2020/09/canada-alberta-banff-national-park-best-campgrounds-columbia-two-jack-lakeside-campsite.jpg')
camping_spot1.photos.attach(io: image1_1, filename: 'camping_spot1_image1_1', content_type: 'image/jpg')
camping_spot1.save!

image1_2 = URI.open('https://images.squarespace-cdn.com/content/v1/5c8b340fab1a621cb3d1009c/1567895110171-X4PMU96989V459TDJ64E/camping+in+banff+and+jasper+national+parks+without+reservations.jpg')
camping_spot1.photos.attach(io: image1_2, filename: 'camping_spot1_image1_2', content_type: 'image/jpg')
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
camping_spot2.photos.attach(io: image2, filename: 'camping_spot2_image2', content_type: 'image/jpg')
camping_spot2.save!

image2_1 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5WMQkXR7-I4ZJnFmd88fn9tIWYj2AFiMfDg&usqp=CAU')
camping_spot2.photos.attach(io: image2_1, filename: 'camping_spot2_image2_1', content_type: 'image/jpg')
camping_spot2.save!

image2_2 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeXYa1JEopbptC7wybUp5KAIr-ZkGlsbCnCQ&usqp=CAU')
camping_spot2.photos.attach(io: image2_2, filename: 'camping_spot2_image2_2', content_type: 'image/jpg')
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
camping_spot3.photos.attach(io: image3, filename: 'camping_spot3_image3', content_type: 'image/jpg')
camping_spot3.save!

image3_1 = URI.open('https://www.camping-dordogne-lacigaline.com/wp-content/uploads/2018/01/camping-vert-dordogne.jpg')
camping_spot3.photos.attach(io: image3_1, filename: 'camping_spot3_image3_1', content_type: 'image/jpg')
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

camping_spot5 = CampingSpot.new(
  title: 'New campsite in the heart of Banff',
  location: '108 Otter St, Banff, canada',
  price: 40,
  capacity: 6,
  description: 'Plot of land in the heart of banff, near many treck spots.',
  host: user2
)
image5 = URI.open('https://www.banffadventures.com/DesktopModules/PTI/TileView/images/82/tb_cedar-hosue.jpg')
camping_spot5.photos.attach(io: image5, filename: 'camping_spot1_image5', content_type: 'image/jpg')
camping_spot5.save!

image5_1 = URI.open('https://www.planetware.com/wpimages/2020/09/canada-alberta-banff-national-park-best-campgrounds-columbia-two-jack-lakeside-campsite.jpg')
camping_spot5.photos.attach(io: image5_1, filename: 'camping_spot1_image5_1', content_type: 'image/jpg')
camping_spot5.save!

image5_2 = URI.open('https://images.squarespace-cdn.com/content/v1/5c8b340fab1a621cb3d1009c/1567895110171-X4PMU96989V459TDJ64E/camping+in+banff+and+jasper+national+parks+without+reservations.jpg')
camping_spot5.photos.attach(io: image5_2, filename: 'camping_spot1_image5_2', content_type: 'image/jpg')
camping_spot5.save!
