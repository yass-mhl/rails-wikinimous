# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
p 'Delete seed'
Article.destroy_all

p 'seeding...........'
10.times {
  Article.create(title: Faker::Book.title, content: Faker::Quotes::Shakespeare.romeo_and_juliet_quote )
  p '1 article is create ........'
}
p 'finish ..........'
