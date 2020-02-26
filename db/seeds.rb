# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(name: 'BatMan', bio: 'OMG!OMG!OMG!OMG!OMG!OMG!OMG!OMG!OMG!')
Genre.create(name: 'R&B')
Artist.create(name: 'WonderWoman', bio: 'OMG!OMG!OMG!OMG!OMG!OMG!OMG!OMG!OMG!')
Genre.create(name: 'Soul')
Artist.create(name: 'CaptainMarvel', bio: 'OMG!OMG!OMG!OMG!OMG!OMG!OMG!OMG!OMG!')
Genre.create(name: 'Rock - The Good kind')
Artist.create(name: 'The Hulk', bio: 'OMG!OMG!OMG!OMG!OMG!OMG!OMG!OMG!OMG!')
Genre.create(name: 'TheBest Genre')
Artist.create(name: 'The Artist Formely Known As Diddy', bio: 'Shit!')
Genre.create(name: 'Mashai Folk Music')
Song.create(name: 'Oh Baby.........', artist_id: 1, genre_id: 5)
Song.create(name: 'Oh Darling.......', artist_id: 2, genre_id: 4)
Song.create(name: 'Oh My God.........', artist_id: 3, genre_id: 3)
Song.create(name: 'Holy Cow.........', artist_id: 4, genre_id: 2)
Song.create(name: 'Thats Crazy.........', artist_id: 5, genre_id: 1)
Song.create(name: 'HMMMMmmm.........', artist_id: 4, genre_id: 2)
Song.create(name: 'Just mmmmmmm.........', artist_id: 2, genre_id: 1)
Song.create(name: 'Baby!!!!.........', artist_id: 3, genre_id: 4)

