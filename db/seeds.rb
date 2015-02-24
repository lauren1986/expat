# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{ category_name: 'Employment', category_id: 1 }, { category_name: 'Health & Safety', category_id: 2 }, { category_name: 'Finance', category_id: 3 }, { category_name: 'Housing', category_id: 4 },
  { category_name: 'Immigration & Visas', category_id: 5 }, { category_name: 'Language & Education', category_id: 6 }, { category_name: 'Miscellaneous', category_id: 7 },
  { category_name: 'People & Culture', category_id: 8 }, { category_name: 'Things To Do', category_id: 9 }, { category_name: 'Transportation', category_id: 10 }])
