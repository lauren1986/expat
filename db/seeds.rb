# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([
	{ category_name: 'Employment'},
  { category_name: 'Health & Safety'},
  { category_name: 'Finance'},
  { category_name: 'Housing'},
  { category_name: 'Immigration & Visas'},
  { category_name: 'Language & Education'},
  { category_name: 'Miscellaneous'},
  { category_name: 'People & Culture'},
  { category_name: 'Things To Do'},
  { category_name: 'Transportation'}])
