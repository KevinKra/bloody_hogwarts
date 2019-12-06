# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

harry = Student.create(
  name: "Harry", 
  age: 17, 
  house: "GriffyDoor"
 )
ron = Student.create(
  name: "Ron", 
  age: 16, 
  house: "GriffyDoor"
 )
hermione = Student.create(
  name: "Hermione", 
  age: 17, 
  house: "GriffyDoor"
 )

potions.students << ron
potions.students << hermoine
dark_arts.students << harry