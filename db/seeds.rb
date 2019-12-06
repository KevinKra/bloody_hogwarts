# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

potions = Course.new("Potions")
dark_arts = Course.new("Dark Arts") 

harry = Student.new(
  name: "Harry", 
  age: 17, 
  house: "GriffyDoor"
 )
ron = Student.new(
  name: "Ron", 
  age: 16, 
  house: "GriffyDoor"
 )
hermione = Student.new(
  name: "Hermione", 
  age: 17, 
  house: "GriffyDoor"
 )

potions.students << ron
potions.students << hermoine
dark_arts.students << harry