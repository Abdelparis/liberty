# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating 10 fake users...'

User.create!(
  first_name: "Pierre",
  last_name: "Martin",
  email:"pm@gmail.com",
  phone_number: "0765432876",
  address: "16 rue des batignolles, paris",
  description: "Super cool",
  price_by_hour: 30,
  )

User.create!(
  first_name: "Anna",
  last_name: "Lecomte",
  email:"al@gmail.com",
  phone_number: "0689756743",
  address: "3 rue des martyrs, paris",
  description: "J'adore mon job",
  price_by_hour: 35,
  )

User.create!(
  first_name: "Maelys",
  last_name: "Lebon",
  email:"ml@gmail.com",
  phone_number: "0789563490",
  address: "16 rue Oberkampf, paris",
  description: "Passionnée de vélo",
  price_by_hour: 25,
  )

User.create!(
  first_name: "Blandine",
  last_name: "Deschamps",
  email:"bd@gmail.com",
  phone_number: "0789653423",
  address: "16 rue pierre demours, paris",
  description: "Toujours à l'écoute",
  price_by_hour: 30,
  )

User.create!(
  first_name: "Rachid",
  last_name: "Dati",
  email:"rd@gmail.com",
  phone_number: "0678563489",
  address: "12 rue de grenelle, paris",
  description: "Très motivé",
  price_by_hour: 35,
  )

User.create!(
  first_name: "Julien",
  last_name: "Clavel",
  email:"jc@gmail.com",
  phone_number: "0654356732",
  address: "112 rue des pyrénées, paris",
  description: "Je vous attends",
  price_by_hour: 30,
  )

User.create!(
  first_name: "Salomé",
  last_name: "Reytan",
  email:"sar@gmail.com",
  phone_number: "0689765432",
  address: "5 rue beaujon, paris",
  description: "Souriante et attentionnée",
  price_by_hour: 30,
  )

User.create!(
  first_name: "Alexandre",
  last_name: "Sage",
  email:"alexs@gmail.com",
  phone_number: "0689765445",
  address: "5 rue bonaparte, paris",
  description: "Je serai ravi de vous rencontrer",
  price_by_hour: 30,
  )

  User.create!(
  first_name: "Laura",
  last_name: "Bellin",
  email:"lab@gmail.com",
  phone_number: "0689776432",
  address: "5 rue de maubeuge, paris",
  description: "Souriante et dynamique",
  price_by_hour: 30,
  )

  User.create!(
  first_name: "Jean",
  last_name: "Raffi",
  email:"jraf@gmail.com",
  phone_number: "0754321245",
  address: "5 rue des petites écuries, paris",
  description: "Souriant et disponible",
  price_by_hour: 30,
  )

puts 'Ending creating 10 fake users...'


puts 'Creating 10 fake missions...'

Mission.create!(
  name: "Cours de Yoga",
  description: "La société Health&Sens est un cabinet de professionnels dans le domaine du sport et du bien-être en entreprise depuis plus de 10 ans, sur Paris et la région parisienne. Nous recherchons des professeurs sur Paris et la région Parisienne ( 77-78-91-92-93-94-95), afin de dispenser des cours auprès de nos clients le vendredi de 12h30 à 13h30. Vous êtes diplômé en Pilates et/ou Yoga? N’hésitez pas à nous contacter.",
  address: "14 rue crespin du gast, paris",
  price_by_hour: 30,
  start_date_time: "20200929123000",
  end_date_time: "20200929133000",
  )


Mission.create!(
  name: "Cours de Pilate",
  description: "Cours dans notre coworking",
  address: "64 rue des Archives",
  price_by_hour: 35,
  start_date_time: "20200928123000",
  end_date_time: "20200928133000",
  )

Mission.create!(
  name: "Cours de Sophrologie",
  description: "Cours dans notre service oncologie",
  address: "23 rue goerges bizet, paris",
  price_by_hour: 40,
  start_date_time: "20200925123000",
  end_date_time: "20200925133000",
  )

Mission.create!(
  name: "Séance de Réflexologie",
  description: "Séance dans notre cabinet d'osthéopathie. Notre star-up, Welcome in the Futur, a à coeur le bien-être de ses employés. Situé dans le 9e à Paris, nous recherchons un professeur de relaxation et de méditation pour animer les pauses de 13h à 14h. Nous cherchons un animateur diplômé avec une attitude positive, dynamique et professionnelle.",
  address: "10 boulevard Raspail, paris",
  price_by_hour: 30,
  start_date_time: "20201025123000",
  end_date_time: "20201025133000",
  )

Mission.create!(
  name: "Séance d'osthéopathie",
  description: "Séance dans notre cabinet médical",
  address: "104 rue michel ange, paris",
  price_by_hour: 30,
  start_date_time: "20201027123000",
  end_date_time: "20201027133000",
  )

puts 'Ending creating 6 fake missions...'

puts 'Creating 10 fake job categories...'

JobCategory.create!(
  name: "Professeur de Yoga",
  description: "Expert en yoga titulaire d'un diplôme reconnu en France",
  )

JobCategory.create!(
  name: "Professeur de Pilates",
  description: "Expert en pilates titulaire d'un diplôme reconnu en France",
  )

JobCategory.create!(
  name: "Coiffeur coloriste",
  description: "Expert en coiffure et en coloration titulaire d'un diplôme reconnu en France",
  )

JobCategory.create!(
  name: "Coiffeur barbier",
  description: "Expert en coiffure et techniques de barbier titulaire d'un diplôme reconnu en France.",
  )

JobCategory.create!(
  name: "Esthéticienne",
  description: "Expert en esthétique titulaire d'un diplôme reconnu en France",
  )

JobCategory.create!(
  name: "Masseur.se",
  description: "Expert en massage du visage et du corps titulaireaire d'un diplôme reconnu en France",
  )

puts 'Ending creating 6 fake skills...'

puts 'Creating 10 fake skills...'

User.create!(
  user_id: 1,
  job_category_id: 1,
  )

User.create!(
  user_id: 2,
  job_category_id: 2,
  )

User.create!(
  user_id: 3,
  job_category_id: 3,
  )

User.create!(
  user_id: 4,
  job_category_id: 4,
  )

User.create!(
  user_id: 5,
  job_category_id: 5,
  )

User.create!(
  user_id: 6,
  job_category_id: 6,
  )

User.create!(
  user_id: 7,
  job_category_id: 1,
  )

User.create!(
  user_id: 8,
  job_category_id: 2,
  )

User.create!(
  user_id: 9,
  job_category_id: 3,
  )

User.create!(
  user_id: 10,
  job_category_id: 4,
  )


puts 'Ending creating 10 fake skills...'

puts 'Creating 10 fake bookings...'

User.create!(
  mission_id: 1,
  user_id: 1,
  total_price: 100,
  accepted: true,
  freelancer_review: ,
  freelancer_rating: 4,
  company_review: ,
  company_rating: 5,
  )

User.create!(
  mission_id: 1,
  user_id: 2,
  total_price: 100,
  accepted: false,
  freelancer_review: ,
  freelancer_rating: ,
  company_review: ,
  company_rating: ,
  )

User.create!(
  mission_id: 2,
  user_id: 4,
  total_price: 120,
  accepted: true,
  freelancer_review: "super expérience",
  freelancer_rating: 5,
  company_review: "on recommande vivement!",
  company_rating: 5,
  )

User.create!(
  mission_id: 3,
  user_id: 6,
  total_price: 60,
  accepted: true,
  freelancer_review: ,
  freelancer_rating: 5,
  company_review: ,
  company_rating: 5,
  )

User.create!(
  mission_id: 4,
  user_id: 7,
  total_price: 140,
  accepted: true,
  freelancer_review: ,
  freelancer_rating: ,
  company_review: 4,
  company_rating: 4,
  )


puts 'Ending creating 10 fake skills...'
