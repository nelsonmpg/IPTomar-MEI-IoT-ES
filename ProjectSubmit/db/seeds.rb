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
Person.destroy_all
Subject.destroy_all

10.times do |x|
  Project.create({
  	title: "Project Title #{x + 1}",
  	resume: "Resumo #{x + 1}",
  	github: "GitHub Link #{x + 1}",
    grade: "Grade #{x + 1}",
    project_url: "Project Url #{x + 1}",
    date: Time.now.to_s,
    presentation: Time.now.to_s,
    featured: true,
    finished: true
  	})

  School.create({
    name: "School name #{x + 1}",
    code: "School code #{x + 1}",
    initials: "School initials #{x + 1}",
  	description: "School description #{x + 1}"
  	})

  #Document.create({
  #	description: "Document #{x + 1}",
  #	date: Time.now.to_s,
  #	local: "Local #{x + 1}"
  #	})

  Course.create({
  	name: "Course name #{x + 1}",
    code: "Course code #{x + 1}",
    initials: "Course initials #{x + 1}",
  	description: "Course description #{x + 1}"
    })

  #Person.create({
  #	name: "Name #{x + 1}",
  #	email: "Email #{x + 1}",
  #	photo: "Photo #{x + 1}"
  #	})

    Subject.create({
  	name: "Subject name #{x + 1}",
    code: "Subject code #{x + 1}",
    initials: "Subject initials #{x + 1}",
  	description: "Subjec description #{x + 1}"
    })

end
