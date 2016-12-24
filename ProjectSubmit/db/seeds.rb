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

3.times do |x|

  @s = School.create({
    name: "School name #{x + 1}",
    code: rand(100..200),
    initials: (0...4).map { ('A'..'Z').to_a[rand(26)] }.join,
    description: "School description #{x + 1}"
    })

  6.times do |y|
    @c = Course.create({
      name: "Course name #{x + 1}.#{y + 1}",
      code: rand(1000..1500),
      initials: (0...3).map { ('A'..'Z').to_a[rand(26)] }.join,
      description: "Course description #{x + 1}.#{y + 1}",
      school: @s
      })

    2.times do |w|
      @subj = Subject.create({
        name: "Subject name #{x + 1}.#{y + 1}.#{w + 1}",
        code: rand(1000..1500),
        initials: (0...4).map { ('A'..'Z').to_a[rand(26)] }.join,
        description: "Subject description #{x + 1}.#{y + 1}.#{w + 1}",
        course: @c
        })


      2.times do |z|
        Project.create({
          title: "Project Title #{x + 1}.#{y + 1}.#{w + 1}.#{z + 1}",
          resume: "Resumo #{x + 1}.#{y + 1}.#{w + 1}.#{z + 1}",
          github: "https://github.com/nelsonmpg/IPTomar-MEI-IoT-ES",
          grade: rand(1..9),
          project_url: "http://projects.ipt.pt",
          date: rand(1..28).to_s + '/' + rand(1..12).to_s + '/ ' + rand(2016..2017).to_s + ' ' + rand(10..19).to_s + ':00:00',
          presentation: rand(1..28).to_s + '/' + rand(1..12).to_s + '/ ' + rand(2016..2017).to_s + ' ' + rand(10..19).to_s + ':00:00',
          featured: [true, false].sample,
          finished: [true, false].sample,
          })
      end
    end

  end


#Document.create({
#	description: "Document #{x + 1}",
#	date: Time.now.to_s,
#	local: "Local #{x + 1}"
#	})



#Person.create({
#	name: "Name #{x + 1}",
#	email: "Email #{x + 1}",
#	photo: "Photo #{x + 1}"
#	})



end
