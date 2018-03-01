# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Email.create! object: "Meet Mr. Miyagi", body: "hello mister miyagi", read: true
Email.create! object: "Paint the fence", body: "fance and fancy guys", read: true
Email.create! object: "Nouvelle connexion depuis Slack", body: "Vous vous êtes connecté à partir d’un nouvel appareil.", read: false
Email.create! object: "[The Newsletter Project] N°2", body: "Hello tout le monde,    Pour cette deuxième newsletter, toujours plus d'articles, de news", read: false
