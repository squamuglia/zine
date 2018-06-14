# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

max = User.create(name: "Max", email:"max@gmail.com", password:"fuck")
abby = User.create(name: "Abby", email:"abby@gmail.com", password:"sweet")

Post.create(user_id:max.id, title:'This is not a Love Song', body:'lorem ipsum dolors')
Post.create(user_id:max.id, title:'Blowing in the wind', body:'lorem ipsum dolors immet')
Post.create(user_id:abby.id, title:'Zombie Economy', body:'lorem ipsum haephestus dolors')
Post.create(user_id:abby.id, title:'Frnaken furter', body:'lorem ipsum raetheon dolors')
