# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create!(username: 'tatb')
u2 = User.create!(username: 'Presidio2')
u3 = User.create!(username: 'Jaffe')
u4 = User.create!(username: 'batman')

Artwork.destroy_all
art1 = Artwork.create!(title: 'Mona Lisa', image_url: 'google.com', artist_id: u1.id)
art2 = Artwork.create!(title: 'Fenway Park', image_url: 'redsox.com', artist_id: u3.id)
art3 = Artwork.create!(title: 'Gotham City', image_url: 'gotham.com', artist_id: u4.id)

ArtworkShare.destroy_all
art_share1 = ArtworkShare.create!(artwork_id: art1.id, viewer_id: u2.id)
art_share2 = ArtworkShare.create!(artwork_id: art1.id, viewer_id: u3.id)
art_share3 = ArtworkShare.create!(artwork_id: art2.id, viewer_id: u1.id)
