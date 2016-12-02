# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.destroy_all
School.destroy_all
Document.destroy_all
Course.destroy_all

10.times do |x|
  Project.create({
  	title: "Title #{x + 1}",
  	resumo: "Resumo #{x + 1}",
  	file: "File #{x + 1}"
  	})

  School.create({
  	description: "Description #{x + 1}"
  	})

  Document.create({
  	description: "Description #{x + 1}",
  	date: Time.now.to_s,
  	local: "Local #{x + 1}"
  	})

  Course.create({
    description: "Description #{x + 1}"
    })

end