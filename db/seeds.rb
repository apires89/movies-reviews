puts "Started seeding"

puts "Cleaning DB"

Movie.destroy_all

puts "Creating Movies"

10.times do
  Movie.create(title: Faker::Movies::StarWars.specie,
    description: Faker::Movies::StarWars.quote,
    year: rand(1990..2020), producer: Faker::Movies::StarWars.character)
end

puts "finished seeding"
