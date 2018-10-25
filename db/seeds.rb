# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

15.times do
    assemblies=Assembly.create!(name: Faker::Vehicle.manufacture)
end

30.times do
    parts=Part.create!(part_number: Faker::Vehicle.model)
end

45.times do
    Assembly.find(Random.rand(1..15)).parts << Part.find(Random.rand(1..30))
end
