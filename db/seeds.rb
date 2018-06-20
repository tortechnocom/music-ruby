# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# rails generate migration CreateSongs name:string brand:string album:string genre:string chord:string
# rails db:migrate
# rails db:seed

200.times do
  Songs.create([{
    name: Faker::Name,
    brand: Faker::Music.band,
    album: Faker::Music.album,
    genre: Faker::Music.genre,
    chord: Faker::Music.chord
  }])
end

# Songs.find_c_chord
# Songs.find_the_beatles
# Songs.find_rock
