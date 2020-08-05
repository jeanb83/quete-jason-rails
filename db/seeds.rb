# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Member.destroy_all

puts 'Creating 48 fake members...'
48.times do
  member = Member.new(
    name:  Faker::Name.male_first_name
  )
  member.save!
end
puts 'Finished!'
