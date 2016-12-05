# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

NUM_PERFORMANCES = 20

puts "creating artists"
artist_styles = ["sculptor", "painter", "contortionist", "photographer"]
NUM_PERFORMANCES.times do |n|
  Artist.create({
    name: Faker::Hipster.words(2).join(" "),
    style: artist_styles.sample
  })
end

puts "creating bands"
band_styles = ["rock", "pop", "ska", "jazz", "symphony"]
NUM_PERFORMANCES.times do |n|
  Band.create({
    name: Faker::Hipster.words(rand(1..3)).join(" "),
    style: band_styles.sample
  })
end

puts "creating clowns"
clown_styles = ["sad", "creepy", "murderous"]
NUM_PERFORMANCES.times do |n|
  clown = []
  rand(1..3).times {clown << clown_styles.sample}
  Clown.create({
    name: Faker::Hipster.words(rand(1..3)).join(" "),
    style: clown.join(" ")
  })
end

puts "creating magicians"
magician_styles = ["sad", "street", "stage", "escape", "illusionist", "hedonistic"]
NUM_PERFORMANCES.times do |n|
  Magician.create({
    name: Faker::Hipster.words(rand(1..3)).join(" "),
    style: magician_styles.sample
  })
end

puts "creating performances"
performer_types = ["Artist", "Band", "Clown", "Magician"]
NUM_PERFORMANCES.times do |n|
  performer = performer_types.sample
  id = performer.constantize.pluck(:id).sample

  Performance.create({
    performer_id: id,
    performer_type: performer,
    time: Faker::Time.between(DateTime.now - 1, DateTime.now + 1000),
    location: Faker::StarWars.planet
  })
end
