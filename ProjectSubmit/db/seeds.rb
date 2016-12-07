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
  	title: "Project Title #{x + 1}",
  	resume: "Resumo #{x + 1}",
  	github: "#{x + 1}",
    date: Time.now.to_s,
    grade: "#{x + 1}",
    projectlink: "#{x + 1}",
    presentation: "#{x + 1}",
    feature: "#{x + 1}",
    finished: "#{x + 1}"
  	})

  School.create({
  	description: "School #{x + 1}"
  	})

  Document.create({
  	description: "Document #{x + 1}",
  	date: Time.now.to_s,
  	local: "Local #{x + 1}"
  	})

  Course.create({
    description: "Course #{x + 1}"
    })

end
