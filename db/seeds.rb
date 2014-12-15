# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Member.create(name: "Edward Jasper", email: "edwardjasperjr@gmail.com")
Provider.create(name: "Billy Bovine", email: "jasperknowsbest@gmail.com")
Location.create(name: "Equinox", address: "50th/Broadway")
Location.create(name: "Crunch", address: "Chelsea")

