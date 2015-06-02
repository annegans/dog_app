# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dog1 = Dog.create(name: 'Bert', breed: 'Sheperd', age: 3, color: 'blue')

dog2 = Dog.create(name: 'Friz', breed: 'Airedale Terrier', age: 2, color: 'red')

dog3 = Dog.create(name: 'Ernie', breed: 'American Cocker Spaniel', age: 1, color: 'pink')

dog4 = Dog.create(name: 'Kid', breed: 'American Eskimo Dog', age: 6, color: 'black')