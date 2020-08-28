require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."

Skill.destroy_all
Booking.destroy_all
Mission.destroy_all
User.destroy_all
JobCategory.destroy_all

puts "Creating 10 fake users..."

elisa = User.create!(
  first_name: "Elisa",
  last_name: "Martin",
  company_name: "",
  role: "freelancer",
  email:"elisa@gmail.com",
  password: "123456",
  phone_number: "0765432876",
  address: "16 rue des batignolles, paris",
  description: "Super cool",
  price_by_hour: 30
  )
  file_2 = URI.open("https://images.unsplash.com/flagged/photo-1576212152884-614580e3d5ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
  elisa.avatar.attach(io: file_2, filename: 'avatar.jpeg', content_type: 'image/jpeg')

User.create!(
  first_name: "Anna",
  last_name: "Lecomte",
  company_name: "",
  role: "freelancer",
  email:"al@gmail.com",
  password: "234567",
  phone_number: "0689756743",
  address: "3 rue des martyrs, paris",
  description: "J'adore mon job",
  price_by_hour: 35
  )

User.create!(
  first_name: "Maelys",
  last_name: "Lebon",
  company_name: "",
  role: "freelancer",
  email:"ml@gmail.com",
  password: "345678",
  phone_number: "0789563490",
  address: "16 rue Oberkampf, paris",
  description: "Passionnée de vélo",
  price_by_hour: 25
  )

User.create!(
  first_name: "Blandine",
  last_name: "Deschamps",
  company_name: "",
  role: "freelancer",
  email:"bd@gmail.com",
  password: "456789",
  phone_number: "0789653423",
  address: "16 rue pierre demours, paris",
  description: "Toujours à l'écoute",
  price_by_hour: 30
  )

User.create!(
  first_name: "Rachid",
  last_name: "Dati",
  company_name: "",
  role: "freelancer",
  email:"rd@gmail.com",
  password: "5678910",
  phone_number: "0678563489",
  address: "12 rue de grenelle, paris",
  description: "Très motivé",
  price_by_hour: 35
  )

User.create!(
  first_name: "Julien",
  last_name: "Clavel",
  company_name: "",
  role: "freelancer",
  email:"jc@gmail.com",
  password: "67891011",
  phone_number: "0654356732",
  address: "112 rue des pyrénées, paris",
  description: "Je vous attends",
  price_by_hour: 30
  )

User.create!(
  first_name: "Salomé",
  last_name: "Reytan",
  company_name: "",
  role: "freelancer",
  email:"sar@gmail.com",
  password: "789101112",
  phone_number: "0689765432",
  address: "5 rue beaujon, paris",
  description: "Souriante et attentionnée",
  price_by_hour: 30
  )

User.create!(
  first_name: "Alexandre",
  last_name: "Sage",
  company_name: "",
  role: "freelancer",
  email:"alexs@gmail.com",
  password: "891011213",
  phone_number: "0689765445",
  address: "5 rue bonaparte, paris",
  description: "Je serai ravi de vous rencontrer",
  price_by_hour: 30
  )

User.create!(
  first_name: "Laura",
  last_name: "Bellin",
  company_name: "",
  role: "freelancer",
  email:"lab@gmail.com",
  password: "91011121314",
  phone_number: "0689776432",
  address: "5 rue de maubeuge, paris",
  description: "Souriante et dynamique",
  price_by_hour: 30
  )

User.create!(
  first_name: "Jean",
  last_name: "Raffi",
  company_name: "",
  role: "freelancer",
  email:"jraf@gmail.com",
  password: "1011121314",
  phone_number: "0754321245",
  address: "5 rue des petites écuries, paris",
  description: "Souriant et disponible",
  price_by_hour: 30
  )

health_sens = User.create!(
  first_name: "Jean",
  last_name: "Pomme",
  company_name: "Health Sens",
  role: "company",
  email:"healthsens@gmail.com",
  password: "11121314",
  phone_number: "0754321245",
  address: "5 rue des saint pères, paris",
  description: "Cabinet de professionnels dans le domaine du sport et du bien-être en entreprise",
  )

  file_2 = URI.open("https://image.freepik.com/vecteurs-libre/conception-du-yoga-creer-logo-vectoriel-equilibre_53876-40844.jpg")
  health_sens.avatar.attach(io: file_2, filename: 'avatar.jpeg', content_type: 'image/jpeg')


User.create!(
  first_name: "Pierre",
  last_name: "Nature",
  company_name: "Naturopathos",
  role: "company",
  email:"naturopathos@gmail.com",
  password: "11121319",
  phone_number: "0778786790",
  address: "5 avenue parmentier, paris",
  description: "Cabinet de naturopathie",
  )

User.create!(
  first_name: "Anna",
  last_name: "Bing",
  company_name: "Salon Anna",
  role: "company",
  email:"salonanna@gmail.com",
  password: "12131415",
  phone_number: "0777778888",
  address: "5 rue du louvre, paris",
  description: "Salon de coiffure et de beauté de standing spécialisé dans le bio et la responsabilité environnementale",
  )

User.create!(
  first_name: "Sarah",
  last_name: "Pamelo",
  company_name: "MamaPam",
  role: "company",
  email:"mamapam@gmail.com",
  password: "13141516",
  phone_number: "0711114455",
  address: "16 rue chappe, paris",
  description: "nouvelle petite chaîne d'hôtel française",
  )

User.create!(
  first_name: "Alain",
  last_name: "Dujardin",
  company_name: "Yuji",
  role: "company",
  email:"yuji@gmail.com",
  password: "14151617",
  phone_number: "0754321245",
  address: "11 rue jean pierre timbaud, Paris",
  description: "Jeune entreprise spécialisé dans le yoga urban",
  )

  petit_pas = User.create!(
  first_name: "Heloise",
  last_name: "Dupont",
  company_name: "Les Petits Pas",
  role: "company",
  email:"petitspas@gmail.com",
  password: "11213145",
  phone_number: "0678923045",
  address: "146 Boulevard Pereire, Paris",
  description: "Ecole Montessori Des Petits Pas pour une éductaion libre et autonome",
  )

  file_2 = URI.open("https://i.pinimg.com/originals/ce/29/ba/ce29ba2092140266b041bf3664d66381.jpg")
  petit_pas.avatar.attach(io: file_2, filename: 'avatar_1.jpeg', content_type: 'image/jpeg')

  les_pinsons = User.create!(
  first_name: "Florent",
  last_name: "Lamarte",
  company_name: "Les Pinsons",
  role: "company",
  email:"lespinsons@gmail.com",
  password: "11213144",
  phone_number: "0650927034",
  address: "43 Rue Saint-Maur, Paris",
  description: "Maison de naissance dédiée au bien-être de l’enfant et de la mère",
  )

  file_2 = URI.open("https://www.childrensdayton.org/sites/default/files/pictures/logo.jpg")
  les_pinsons.avatar.attach(io: file_2, filename: 'avatar_2.jpeg', content_type: 'image/jpeg')

  le_wagon = User.create!(
  first_name: "Lamiaa",
  last_name: "El Fettahi",
  company_name: "Le Wagon",
  role: "company",
  email:"lewagon@gmail.com",
  password: "11213147",
  phone_number: "0678653145",
  address: "16 Villa Gaudelet, Paris",
  description: "Apprendre à coder pour changer de vie",
  )

  file_2 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/16/e0/2a/fd/getlstd-property-photo.jpg")
  le_wagon.avatar.attach(io: file_2, filename: 'avatar_3.jpeg', content_type: 'image/jpeg')


  yoj_ohm  = User.create!(
  first_name: "Samia",
  last_name: "Martin",
  company_name: "Yoj-Omh",
  role: "company",
  email:"yoj_ohm@gmail.com",
  password: "11213146",
  phone_number: "0678655146",
  address: "46 rue Lamartine, Paris",
  description: "Le yoga pour une vie plus sereine",
  )

  file_2 = URI.open("https://media.lexception.com/img/products/yuj/99818-yuj-tapisleokaki-05-0800-0800.jpg")
  yoj_ohm.avatar.attach(io: file_2, filename: 'avatar_4.jpeg', content_type: 'image/jpeg')

  yoga_sens  = User.create!(
  first_name: "Alexia",
  last_name: "Smeth",
  company_name: "Yoga&Sens",
  role: "company",
  email:"yogasens@gmail.com",
  password: "11213176",
  phone_number: "0678655178",
  address: "74 rue du Moulin Vert, Paris",
  description: "Le yoga pour une vie plus équilibrée",
  )

  file_2 = URI.open("https://media.lexception.com/img/products/yuj/99818-yuj-tapisleokaki-05-0800-0800.jpg")
  yoga_sens.avatar.attach(io: file_2, filename: 'avatar_5.jpeg', content_type: 'image/jpeg')



puts "Ending creating 10 fake users..."

puts "Creating 10 fake job categories..."

JobCategory.create!(
  name: "Professeur de Yoga",
  description: "Expert en yoga titulaire d'un diplôme reconnu en France"
  )

JobCategory.create!(
  name: "Professeur de Pilates",
  description: "Expert en pilates titulaire d'un diplôme reconnu en France"
  )

JobCategory.create!(
  name: "Coiffeur coloriste",
  description: "Expert en coiffure et en coloration titulaire d'un diplôme reconnu en France"
  )

JobCategory.create!(
  name: "Coiffeur barbier",
  description: "Expert en coiffure et techniques de barbier titulaire d'un diplôme reconnu en France."
  )

JobCategory.create!(
  name: "Esthéticienne",
  description: "Expert en esthétique titulaire d'un diplôme reconnu en France"
  )

JobCategory.create!(
  name: "Masseur.se",
  description: "Expert en massage du visage et du corps titulaireaire d'un diplôme reconnu en France"
  )

puts "Ending creating 6 fake skills..."

puts "Creating 6 fake skills..."

Skill.create!(
  user_id: User.minimum(:id),
  job_category_id: JobCategory.minimum(:id)
  )

Skill.create!(
  user_id: User.minimum(:id) + 1,
  job_category_id: JobCategory.minimum(:id) + 1
  )

Skill.create!(
  user_id: User.minimum(:id) + 2,
  job_category_id: JobCategory.minimum(:id) + 2
  )

Skill.create!(
  user_id: User.minimum(:id) +3,
  job_category_id: JobCategory.minimum(:id) + 3
  )

Skill.create!(
  user_id: User.minimum(:id) + 4,
  job_category_id: JobCategory.minimum(:id) + 4
  )

Skill.create!(
  user_id: User.minimum(:id) + 5,
  job_category_id: JobCategory.minimum(:id) + 5
  )


puts "Ending creating 6 fake skills..."


puts "Creating 10 fake missions..."

pilate = Mission.create!(
  name: "Cours de Pilate",
  description: "La société Health&Sens est un cabinet de professionnels dans le domaine du sport et du bien-être en entreprise depuis plus de 10 ans, sur Paris et la région parisienne. Nous recherchons des professeurs de pilate ou de yoga sur Paris et la région Parisienne ( 77-78-91-92-93-94-95), afin de dispenser des cours auprès de nos clients le vendredi de 12h30 à 13h30. Vous êtes diplômé en Pilates et/ou Yoga? N’hésitez pas à nous contacter.",
  address: "14 Rue Crespin du Gast, Paris",
  price_by_hour: 30,
  start_date_time: "20200929123000",
  end_date_time: "20200929133000",
  job_category_id: JobCategory.minimum(:id),
  user_id: User.minimum(:id) + 10
  )
  file = URI.open("https://images.unsplash.com/photo-1518609571773-39b7d303a87b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
  pilate.photos.attach(io: file, filename: 'pilate_1.jpeg', content_type: 'image/jpeg')



yoga = Mission.create!(
  name: "Cours de Yoga",
  description: "Yuji est une jeune entreprise spécialisée dans le yoga urban. Nous possédons trois salles dans Paris et nous avons pensé nos espaces comme de vrais refuges urbans où calme, silence et détente sont nos crédos. Nous sommes à la recherche d'un professeur de yoga spécialisé dans le Yin & Vinyasa et qui est rompu à la pratique de séances sous infrarouge. Une sensibilité à la musique inspirante mais contemporaine serait grandement appréciée. Nous avons besoin en priorité de remplir notre créneau du samedi de 11h à 12h.",
  address: "64 Rue des Archives, Paris",
  price_by_hour: 35,
  start_date_time: "20200928123000",
  end_date_time: "20200928133000",
  job_category_id: JobCategory.minimum(:id),
  user_id: User.minimum(:id) + 10
  )
 file = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/05/b7/63/52/pranamaya-yoga-studio.jpg")
  file_1 = URI.open("https://www.anousparis.fr/app/uploads/2018/02/yay-yoga-paris-17-studio-cardinet-7-1024x681.jpg")
  yoga.photos.attach(io: file, filename: 'yoga_1.jpeg', content_type: 'image/jpeg')
  yoga.photos.attach(io: file_1, filename: 'yoga_2.jpeg', content_type: 'image/jpeg')


coiffure = Mission.create!(
  name: "Séance de coiffures",
  description: "Le salon Hair&Beauté est un salon de coiffure installé depuis 5 ans dans le 4e à Paris. Nous avons une clientèle jeune, dynamique à la recherche du chic, de l'innovation et des dernières tendances. Nous ouvrons un créneau horaire spécialisé en coiffure de soirée pour nos clientes le vendredi de 18h à 20h. Nous recherchons donc un coiffeur ou une coiffeuse spécialisé(e) dans les coiffures de soirée : chignon à la française, chignon banane, tresses, wavy, coiffure accessoirisé ... rien n'a de secret pour vous.
N’hésitez pas à nous contacter.",
  address: "3 Rue du Roi de Sicile, Paris",
  price_by_hour: 40,
  start_date_time: "20200925123000",
  end_date_time: "20200925133000",
  job_category_id: JobCategory.minimum(:id) + 2,
  user_id: User.minimum(:id) + 10
  )

 file = URI.open("https://images.unsplash.com/photo-1582095133179-bfd08e2fc6b3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
 coiffure.photos.attach(io: file, filename: 'coiffure_1.jpeg', content_type: 'image/jpeg')


barbier = Mission.create!(
  name: "Atelier barbier",
  description: "En complément pour animer notre salon de coiffure. Salon de coiffure masculine de standing spécialisé dans l'art de la barbe et des produits bio, nous cherchons un artiste de la barbe pour satisfaire nos clients les plus pointus pour compléter le planning du vendredi soir. Une connaissance approfondie des protocles de soins avec les gammes masculines Mr Moustache serait très appréciée. Le créneau horaire que nous proposons pour l'instant est le vendredi de 18h à 19h. Des horaires complémentaires pourraient être proposés par la suite.",
  address: "4 Boulevard de Sébastopol, Paris",
  price_by_hour: 30,
  start_date_time: "20201025123000",
  end_date_time: "20201025133000",
  job_category_id: JobCategory.minimum(:id) + 3,
  user_id: User.minimum(:id) + 10
  )

 file = URI.open("https://images.unsplash.com/photo-1503951914875-452162b0f3f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
 barbier.photos.attach(io: file, filename: 'barbier_1.jpeg', content_type: 'image/jpeg')


massage = Mission.create!(
  name: "Séances de massage",
  description: "Séances de massage pour nos clients. MamaPam est une nouvelle petite chaîne d'hôtel française souhaitant proposé une expérience différente et nouvelle à ses clients. Pour nos hotels parisiens, nous souhaitons mettre en place des séances de massage avec les soins concoctés à base de miel des toits de Paris et d'huile naturelle locale. Nous sommes à la recherche d'une masseuse ou d'un masseur expérimenté spécialisée dans les messages détentes sous infrarouge. Nous avons besoin en priori de remplir notre créneau du samedi de 17h à 20h.",
  address: "109 Rue de Bagnolet, Paris",
  price_by_hour: 30,
  start_date_time: "20201027123000",
  end_date_time: "20201027133000",
  job_category_id: JobCategory.minimum(:id) + 5,
  user_id: User.minimum(:id) + 10
  )

  file = URI.open("https://images.unsplash.com/photo-1591343395082-e120087004b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
  massage.photos.attach(io: file, filename: 'massage_1.jpeg', content_type: 'image/jpeg')
puts "Ending creating 6 fake missions..."

yoga_1 = Mission.create!(
  name: "Cours de Yoga",
  description: "Dans la plus pure tradition des enseignements de Maria Montessori, notre école revendique pour l’enfant, dès sa naissance, est une éducation à la liberté, à l’autonomie dans un environnement préparé avec soin. Entre tradition et modernité, notre école Montessori a pour objectif de donner, en douceur et respect de l’enfant, une éducation d’éducation d’excellence, active & bilingue. L’enfant prend confiance, gagne en autonomie, pratique l'anglais dès le plus jeune âge. Dans la continuité de notre pédagogie et nos méthodologies, nous souhaitons mettre en place un cours de yoga pour nos enfants entre 5 et 6 ans. Nous cherchons donc un professeur de yoga formé à l’enseignement auprès des plus petits. En adéquation avec le planning de nos enseignants, nous avons deux créneaux de disponible pour une grande salle : le mardi entre 14h et 15h ou le jeudi entre 9h et 10h.",
  address: "146 Boulevard Pereire, Paris",
  price_by_hour: 35,
  start_date_time: Date.today-6,
  end_date_time: Date.today-4,
  job_category_id: JobCategory.minimum(:id),
  user_id: User.minimum(:id) + 10
  )

  file = URI.open("https://images.unsplash.com/photo-1587323655395-b1c77a12c89a?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")
  yoga_1.photos.attach(io: file, filename: 'pilate_1.jpeg', content_type: 'image/jpeg')

  yoga_2 = Mission.create!(
  name: "Cours de Yoga",
  description: "Dédiée au bien-être de l’enfant et de la mère, notre maison de maternité souhaite mettre en place un cours de yoga pour femmes enceintes dans le cadre de la préparation à la naissance. Nous aimerions leur offrir un refuge de sérénité pour relâcher leurs angoisses et leurs craintes. Nous disposons d’un joli local au calme avec tout le matériel adéquat : matelas, briques de mousse... Il ne nous manque plus qu’un professeur de yoga pour mettre en place un cours de relaxation et un cours de yoga soft pour permettre à notre future maman de se détendre et d’appréhender les futurs changements dans leur vie et leur corps avec calme et sérénité. ",
  address: "43 Rue Saint-Maur, Paris",
  price_by_hour: 35,
  start_date_time: Date.today-8,
  end_date_time: Date.today-7,
  job_category_id: JobCategory.minimum(:id),
  user_id: User.minimum(:id) + 11
  )

  file = URI.open("https://images.unsplash.com/photo-1535571393765-ea44927160be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
  yoga_2.photos.attach(io: file, filename: 'pilate_1.jpeg', content_type: 'image/jpeg')

  yoga_3 = Mission.create!(
  name: "Cours de Yoga",
  description: "Le wagon est une école de code qui a pour ambition de former des développeurs en 9 semaines. Pour accompagner cette formation intensive, nous cherchons un professeur de yoga pour proposer des ateliers de yoga. Nous disposons d’une belle salle en sous-sol extrêmement bien équipée pouvant accueillir une quinzaine de participants. Envie de rencontrer de jeunes amateurs motivés et à la recherche de détente et d’évasion mentale, joignez-nous à nous !",
  address: "16 Villa Gaudelet, Paris",
  price_by_hour: 35,
  start_date_time: Date.today+5,
  end_date_time: Date.today+6,
  job_category_id: JobCategory.minimum(:id),
  user_id: User.minimum(:id) + 12
  )

  file = URI.open("https://images.unsplash.com/photo-1552058461-dc1828d58bf6?ixlib=rb-1.2.1&auto=format&fit=crop&w=747&q=80")
  yoga_3.photos.attach(io: file, filename: 'pilate_1.jpeg', content_type: 'image/jpeg')


  yoga_4 = Mission.create!(
  name: "Cours de Yoga",
  description: "Yoj-Omh est un havre urban calme et serein offrant des cours de yoga. Nous avons pensé nos salles comme de vrais refuges et nous sommes à la recherche d'un professeur de yoga expérimenté et très calme pour des séances de Yin Soft. Une sensibilité à la musique inspirante et apaisante contemporaine serait un plus. Notre créaneau horaire prioritaire est le jeudi de 20h à 21h.",
  address: "46 Rue Lamartine, Paris",
  price_by_hour: 35,
  start_date_time: Date.today+8,
  end_date_time: Date.today+10,
  job_category_id: JobCategory.minimum(:id),
  user_id: User.minimum(:id) + 13
  )

  file = URI.open("https://images.unsplash.com/photo-1565675007565-96028fe53d91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=749&q=80")
  yoga_4.photos.attach(io: file, filename: 'pilate_1.jpeg', content_type: 'image/jpeg')


  yoga_5 = Mission.create!(
  name: "Cours de Yoga",
  description: "Yoga&Sens est une entreprise spécialisée dans le yoga urban et tendance. Nous possédons de nombreuses salles dans Paris et nous avons pensé chaque adresse comme de vrais ilôts de paix. Nous cherchons un professeur de yoga polyvalent et fiable. Nous avons besoin en priorité de remplir notre créneau du mardi de 11h à 12h.",
  address: "74 rue du Moulin Vert, Paris",
  price_by_hour: 35,
  start_date_time: Date.today+10,
  end_date_time: Date.today+13,
  job_category_id: JobCategory.minimum(:id),
  user_id: User.minimum(:id) + 14
  )
  file = URI.open("https://images.unsplash.com/photo-1535007829477-d13662ffb714?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1238&q=80")
  file_1 = URI.open("https://images.unsplash.com/photo-1520363147109-9ab9d1c8f8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1124&q=80")
  yoga.photos.attach(io: file, filename: 'yoga_1.jpeg', content_type: 'image/jpeg')
  yoga.photos.attach(io: file_1, filename: 'yoga_2.jpeg', content_type: 'image/jpeg')



puts "Creating 5 fake bookings..."

Booking.create!(
  mission_id: Mission.minimum(:id) + 1,
  user_id: User.minimum(:id),
  total_price: 100,
  freelancer_review: "",
  freelancer_rating: 4,
  company_review: "Très bonne expérience chez Health Sens, j'ai adoré le personnel",
  company_rating: 5,
  status: "accepted"
  )

Booking.create!(
  mission_id: Mission.maximum(:id) - 3,
  user_id: User.minimum(:id),
  total_price: 100,
  freelancer_review: "",
  freelancer_rating: 5,
  company_review: "",
  company_rating: 5,
  status: "rejected"
  )

Booking.create!(
  mission_id: Mission.maximum(:id) - 2,
  user_id: User.minimum(:id) + 1,
  total_price: 120,
  freelancer_review: "super expérience",
  freelancer_rating: 5,
  company_review: "on recommande vivement!",
  company_rating: 5,
  status: "pending"
  )

Booking.create!(
  mission_id: Mission.maximum(:id) - 1,
  user_id: User.minimum(:id) ,
  total_price: 60,
  freelancer_review: "",
  freelancer_rating: 5,
  company_review: "",
  company_rating: 5,
  status: "accepted"
  )

Booking.create!(
  mission_id: Mission.maximum(:id),
  user_id: User.minimum(:id),
  total_price: 140,
  freelancer_review: "",
  freelancer_rating: 4,
  company_review: "",
  company_rating: 4,
  status: "accepted"
  )



puts "Ending creating 5 fake skills..."
