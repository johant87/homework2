# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
bieber = Artist.create({ artistn: "Justin Bieber"})
kanye = Artist.create({ artistn: "Kanye West"})

Song.destroy_all
stronger = Song.create({
  title: "Stronger",
  artist_id: kanye.id
})

believe = Song.create({
  title: "Believe",
  artist_id: bieber.id
})

bigger = Song.create({
  title: "bigger",
  artist_id: kanye.id
})

faster = Song.create({
  title: "faster",
  artist_id: kanye.id
})
