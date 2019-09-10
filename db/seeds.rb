# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times  do
	Post.create({
		title: Faker::Book.title,
		body: Faker::Lorem.sentence
	})
end

10.times  do
	User.create({
		name: Faker::Name.unique.name,
        surname: Faker::Name.name,
        email: Faker::Internet.email,
        password: Faker::Internet.password
	})
end

50.times do 
	Comment.create({
		user_name: Faker::Name.name,
		title: Faker::Book.title,
		body: Faker::Lorem.sentence
	})
end