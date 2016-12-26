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
CourseUnit.destroy_all

@u1 = User.create(email:'teste@teste.pt',password:'123456')
@u2 = User.create(email:'admin@projectsubmit.pt',password:'123qwe')

@i = Institution.create(name: 'Instituto Politécnico de Tomar', code: '1234', initials: 'IPT')

@s1 = School.create(name:'Escola Superior de Tecnologia de Tomar',code:'1234',initials:'ESTT',description:'Tecnologia Tomar', institution:@i)
@s2 = School.create(name:'Escola Superior de Gestão de Tomar',code:'4321',initials:'ESGT',description:'Gestao Tomar', institution:@i)
@s3 = School.create(name:'Escola Superior de Tecnologia de Abrantes',code:'1111',initials:'ESGT',description:'Tecnologia Abrantes', institution:@i)

@ct1 = CourseType.create(name: 'Licenciatura', cycle: 1)
@ct2 = CourseType.create(name: 'Mestrado', cycle: 2)
@ct3 = CourseType.create(name: 'Doutoramento', cycle: 3)

@r1 = Course.create(name:'Auditoria e Fiscalidade',code:'1234',initials:'TeSP',description:'TeSP',school:@s1, course_type: @ct1)
@r2 = Course.create(name:'Engenheria Informatica',code:'12345',initials:'Licen',description:'Licenciatura',school:@s2, course_type: @ct1)
@r3 = Course.create(name:'Engenheria Civil',code:'1243',initials:'Mest',description:'Mestrado',school:@s1, course_type: @ct2)
@r4 = Course.create(name:'Design e Tecnologia das Artes Gráficas',code:'14434',initials:'Dout',description:'Doutoramento',school:@s3, course_type: @ct2)
@r5 = Course.create(name:'Gestão e Administração de Serviços de Saúde',code:'13234',initials:'Pós',description:'Pós-Graduação',school:@s2, course_type: @ct3)
@r6 = Course.create(name:'Arqueologia Pré-Histórica a Arte Rupestre',code:'13234',initials:'Pós',description:'Pós-Graduação',school:@s3, course_type: @ct3)


@discipline1 = CourseUnit.create(name:'Álgebra',code:'1243',initials:'Mest',description:'Mestrado',course:@r2, year:"1",semester:"2")
@discipline2 = CourseUnit.create(name:'Introdução à Programação',code:'1243',initials:'Mest',description:'Mestrado',course:@r1, year:"1",semester:"1")
@discipline3 = CourseUnit.create(name:'Introdução à Tecnologia',code:'1243',initials:'Mest',description:'Mestrado',course:@r3, year:"1",semester:"1")
@discipline4 = CourseUnit.create(name:'Sistemas Digitais',code:'1243',initials:'Mest',description:'Mestrado',course:@r4, year:"1",semester:"1")
@discipline5 = CourseUnit.create(name:'Análise Matemática II',code:'1243',initials:'Mest',description:'Mestrado',course:@r2, year:"2",semester:"1")
@discipline6 = CourseUnit.create(name:'Introdução à Electrónica Digital',code:'1243',initials:'Mest',description:'Mestrado',course:@r2, year:"2",semester:"2")
@discipline7 = CourseUnit.create(name:'Lógica e Computação',code:'1243',initials:'Mest',description:'Mestrado',course:@r2, year:"2",semester:"1")
@discipline8 = CourseUnit.create(name:'Programação Orientada a Objectos',code:'1243',initials:'Mest',description:'Mestrado',course:@r2, year:"2",semester:"2")
@discipline9 = CourseUnit.create(name:'Tecnologias da Internet I',code:'1243',initials:'Mest',description:'Mestrado',course:@r2, year:"2",semester:"1")
@discipline10 = CourseUnit.create(name:'Análise Matemática I',code:'1243',initials:'Mest',description:'Mestrado',course:@r2, year:"1",semester:"1")
@discipline11 = CourseUnit.create(name:'Arquitectura de Computadores I',code:'1243',initials:'Mest',description:'Mestrado',course:@r1, year:"2",semester:"1")
@discipline12 = CourseUnit.create(name:'Bases de Dados I',code:'1243',initials:'Mest',description:'Mestrado',course:@r2, year:"2",semester:"1")
@discipline13 = CourseUnit.create(name:'Estruturas de Dados e Algoritmos',code:'1243',initials:'Mest',description:'Mestrado',course:@r3, year:"2",semester:"2")
@discipline14 = CourseUnit.create(name:'Introdução às Telecomunicações',code:'1243',initials:'Mest',description:'Mestrado',course:@r1, year:"2",semester:"2")


@person1 = Person.create(name: 'Renato Panda', email: 'renato.panda@ipt.pt')
@person2 = Person.create(name: 'Miguel Coelho', email: 'aluno18284@ipt.pt')
@person3 = Person.create(name: 'Nelson Gomes', email: 'eideoersda@ipt.pt')
@person4 = Person.create(name: 'Luís Oliveira', email: 'loliveira@ipt.pt')
@person5 = Person.create(name: 'Manuel Barros', email: 'mbarros@ipt.pt')

@tag1 = Tag.create(name: 'Ruby')
@tag2 = Tag.create(name: 'Rails')
@tag3 = Tag.create(name: 'Informática')
@tag4 = Tag.create(name: 'Bootstrap')

10.times do |x|
  @project1 = Project.create(
    title: "ProjectSubmit #{x+1}", 
    resume: "Repositório de projectos desenvolvidos no IPT.", 
    github: "https://github.com/nelsonmpg/IPTomar-MEI-IoT-ES", 
    grade: 7, 
    project_url: "http://projects.ipt.pt", 
    date: "30/01/2016", 
    finished: false, 
    featured: true, 
    user: @u1, 
    course_unit: @discipline1)

  @project1.people << [@person2, @person3]
  @project1.supervisors << @person1
  @project1.create_presentation(
    date: rand(1..31).to_s + '/01/2017 ' + rand(10..19).to_s + ':00:00', 
    room: ['A','B','I','O'].sample + rand(100..299).to_s)

  @project1.presentation.juries << [@person4, @person5]

end
