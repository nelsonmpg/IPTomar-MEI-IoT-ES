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






#10.times do |x|
 # Project.create({
  #	title: "Project Title #{x + 1}",
  #	resume: "Resumo #{x + 1}",
  #	github: "GitHub Link #{x + 1}",
   # grade: "Grade #{x + 1}",
    #project_url: "Project Url #{x + 1}",
    #date: Time.now.to_s,
    #presentation: Time.now.to_s,
    #featured: true,
    #finished: true
  	#})

  #@s1=School.create({
   # name: "School name #{x + 1}",
    #code: "12345 #{x + 1}",
    #initials: "ESTT #{x + 1}",
  	#description: "School description #{x + 1}"
  	#})

  #Document.create({
  #	description: "Document #{x + 1}",
  #	date: Time.now.to_s,
  #	local: "Local #{x + 1}"
  #	})

  #Course.create({
  #	name: "Course name #{x + 1}",
   # code: "Course code #{x + 1}",
    #initials: "Course initials #{x + 1}",
  	#description: "Course description #{x + 1}"
    #})

  #Person.create({
  #	name: "Name #{x + 1}",
  #	email: "Email #{x + 1}",
  #	photo: "Photo #{x + 1}"
  #	})

   # Subject.create({
  	#name: "Subject name #{x + 1}",
    #code: "Subject code #{x + 1}",
    #initials: "Subject initials #{x + 1}",
  	#description: "Subjec description #{x + 1}"
    #})

#end



@s1 = School.create(name:'Escola Superior de Tecnologia de Tomar',code:'1234',initials:'ESTT',description:'Tecnologia Tomar')
@s2 = School.create(name:'Escola Superior de Gestão de Tomar',code:'4321',initials:'ESGT',description:'Gestao Tomar')
@s3 = School.create(name:'Escola Superior de Tecnologia de Abrantes',code:'1111',initials:'ESGT',description:'Tecnologia Abrantes')


@r1 = Course.create(name:'Auditoria e Fiscalidade',code:'1234',initials:'TeSP',description:'TeSP',school:@s1)
puts 'tesp criado'
@r2 = Course.create(name:'Engenheria Informatica',code:'12345',initials:'Licen',description:'Licenciatura',school:@s2)
puts 'licenciatura criado'
@r3 = Course.create(name:'Engenheria Civil',code:'1243',initials:'Mest',description:'Mestrado',school:@s1)
@r4 = Course.create(name:'Design e Tecnologia das Artes Gráficas',code:'14434',initials:'Dout',description:'Doutoramento',school:@s3)
@r5 = Course.create(name:'Gestão e Administração de Serviços de Saúde',code:'13234',initials:'Pós',description:'Pós-Graduação',school:@s2)
@r6 = Course.create(name:'Arqueologia Pré-Histórica a Arte Rupestre',code:'13234',initials:'Pós',description:'Pós-Graduação',school:@s3)


@discipline1 = Subject.create(name:'Álgebra',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline2 = Subject.create(name:'Introdução à Programação',code:'1243',initials:'Mest',description:'Mestrado',course:@r1)
@discipline3 = Subject.create(name:'Introdução à Tecnologia',code:'1243',initials:'Mest',description:'Mestrado',course:@r3)
@discipline4 = Subject.create(name:'Sistemas Digitais',code:'1243',initials:'Mest',description:'Mestrado',course:@r4)
@discipline5 = Subject.create(name:'Análise Matemática II',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline6 = Subject.create(name:'Introdução à Electrónica Digital',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline7 = Subject.create(name:'Lógica e Computação',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline8 = Subject.create(name:'Programação Orientada a Objectos',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline9 = Subject.create(name:'Tecnologias da Internet I',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline10 = Subject.create(name:'Análise Matemática I',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline11 = Subject.create(name:'Arquitectura de Computadores I',code:'1243',initials:'Mest',description:'Mestrado',course:@r1)
@discipline12 = Subject.create(name:'Bases de Dados I',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline13 = Subject.create(name:'Estruturas de Dados e Algoritmos',code:'1243',initials:'Mest',description:'Mestrado',course:@r3)
@discipline14 = Subject.create(name:'Introdução às Telecomunicações',code:'1243',initials:'Mest',description:'Mestrado',course:@r1)
@discipline15 = Subject.create(name:'Probabilidades e Estatística',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline16 = Subject.create(name:'Bases de Dados II',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline17 = Subject.create(name:'Microprocessadores',code:'1243',initials:'Mest',description:'Mestrado',course:@r1)
@discipline18 = Subject.create(name:'Redes de Dados I',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline19 = Subject.create(name:'Sistemas Operativos',code:'1243',initials:'Mest',description:'Mestrado',course:@r1)
@discipline20 = Subject.create(name:'Tecnologias da Internet II',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline21 = Subject.create(name:'Análise de Sistemas',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline22 = Subject.create(name:'Arquitectura de Computadores II',code:'1243',initials:'Mest',description:'Mestrado',course:@r1)
@discipline23 = Subject.create(name:'Gestão e Segurança de Redes Informáticas',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline24 = Subject.create(name:'Redes de Dados II',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline25 = Subject.create(name:'Sistemas Distribuídos',code:'1243',initials:'Mest',description:'Mestrado',course:@r1)
@discipline26 = Subject.create(name:'Empreendedorismo',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline27 = Subject.create(name:'Projecto de Redes',code:'1243',initials:'Mest',description:'Mestrado',course:@r1)
@discipline28 = Subject.create(name:'Projecto de Sistemas de Informação',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline29 = Subject.create(name:'Projecto Final',code:'1243',initials:'Mest',description:'Mestrado',course:@r2)
@discipline30 = Subject.create(name:'Sistemas de Informação nas Organizações',code:'1243',initials:'Mest',description:'Mestrado',course:@r1)


