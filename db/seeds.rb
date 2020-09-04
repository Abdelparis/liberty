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
Message.destroy_all
Chatroom.destroy_all
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
  address: "16 rue des batignolles, 75017 Paris",
  description: "Super cool",
  price_by_hour: 30
  )
  file_2 = URI.open("https://image.freepik.com/photos-gratuite/femme-visage-souriant-aux-cheveux-boucles_1139-582.jpg")
  elisa.avatar.attach(io: file_2, filename: "avatar-#{elisa.first_name}.jpeg", content_type: 'image/jpeg')

anna = User.create!(
  first_name: "Anna",
  last_name: "Lecomte",
  company_name: "",
  role: "freelancer",
  email:"al@gmail.com",
  password: "234567",
  phone_number: "0689756743",
  address: "3 rue des martyrs, 75009 Paris",
  description: "J'adore mon job",
  price_by_hour: 35
  )

  file_30 = URI.open("https://image.freepik.com/photos-gratuite/joyeuse-femme-age-moyen-aux-cheveux-boucles_1262-20859.jpg")
  anna.avatar.attach(io: file_30, filename: "avatar-#{anna.first_name}.jpeg", content_type: 'image/jpeg')

maelys = User.create!(
  first_name: "Maelys",
  last_name: "Lebon",
  company_name: "",
  role: "freelancer",
  email:"ml@gmail.com",
  password: "345678",
  phone_number: "0789563490",
  address: "16 rue Oberkampf, 75011 Paris",
  description: "Passionnée de vélo",
  price_by_hour: 25
  )

file_31 = URI.open("https://image.freepik.com/photos-gratuite/femme-apprecier-temps-bord-mer_23-2148574787.jpg")
  maelys.avatar.attach(io: file_31, filename: "avatar-#{maelys.first_name}.jpeg", content_type: 'image/jpeg')

emma = User.create!(
  first_name: "Emma",
  last_name: "Deschamps",
  company_name: "",
  role: "freelancer",
  email:"ed@gmail.com",
  password: "456789",
  phone_number: "0789653423",
  address: "16 rue pierre demours, 75017 Paris",
  description: "Toujours à l'écoute",
  price_by_hour: 32
  )
file_32 = URI.open("https://image.freepik.com/photos-gratuite/femme-afro-americaine-heureuse_1303-8930.jpg")
  emma.avatar.attach(io: file_32, filename: "avatar-#{emma.first_name}.jpeg", content_type: 'image/jpeg')

rachid = User.create!(
  first_name: "Rachid",
  last_name: "Dati",
  company_name: "",
  role: "freelancer",
  email:"rd@gmail.com",
  password: "5678910",
  phone_number: "0678563489",
  address: "12 rue de grenelle, 75006 Paris",
  description: "Très motivé",
  price_by_hour: 34
  )

  file_33 = URI.open("https://image.freepik.com/photos-gratuite/portrait-etudiant-africain-beau-beau-sourire-bras-croises-mur-blanc-bientot-proprietaire-vendeur-startup_176420-12536.jpg")
  rachid.avatar.attach(io: file_33, filename: "avatar-#{rachid.first_name}.jpeg", content_type: 'image/jpeg')

julien = User.create!(
  first_name: "Julien",
  last_name: "Clavel",
  company_name: "",
  role: "freelancer",
  email:"jc@gmail.com",
  password: "67891011",
  phone_number: "0654356732",
  address: "112 rue des pyrénées, 75020 Paris",
  description: "Je vous attends",
  price_by_hour: 31
  )

  file_34 = URI.open("https://image.freepik.com/photos-gratuite/jeune-homme-charmant-sourire-yeux-bleus-posant_176420-15602.jpg")
  julien.avatar.attach(io: file_34, filename: "avatar-#{julien.first_name}.jpeg", content_type: 'image/jpeg')

salome = User.create!(
  first_name: "Salomé",
  last_name: "Reytan",
  company_name: "",
  role: "freelancer",
  email:"sar@gmail.com",
  password: "789101112",
  phone_number: "0689765432",
  address: "5 rue beaujon, 75008 Paris",
  description: "Souriante et attentionnée",
  price_by_hour: 30
  )

file_35 = URI.open("https://image.freepik.com/photos-gratuite/jeune-belle-femme-pull-chaud-rose-aspect-naturel-souriant-portrait-isole-cheveux-longs_285396-896.jpg")
  salome.avatar.attach(io: file_35, filename: "avatar-#{salome.first_name}.jpeg", content_type: 'image/jpeg')


alexandre = User.create!(
  first_name: "Alexandre",
  last_name: "Sage",
  company_name: "",
  role: "freelancer",
  email:"alexs@gmail.com",
  password: "891011213",
  phone_number: "0689765445",
  address: "5 rue bonaparte, 75006 Paris",
  description: "Je serai ravi de vous rencontrer",
  price_by_hour: 33
  )

file_36 = URI.open("https://image.freepik.com/photos-gratuite/jeune-homme-barbu-t-shirt-blanc_273609-7187.jpg")
  alexandre.avatar.attach(io: file_36, filename: "avatar-#{alexandre.first_name}.jpeg", content_type: 'image/jpeg')


laura = User.create!(
  first_name: "Laura",
  last_name: "Bellin",
  company_name: "",
  role: "freelancer",
  email:"lab@gmail.com",
  password: "91011121314",
  phone_number: "0689776432",
  address: "5 rue de maubeuge, 75009 Paris",
  description: "Souriante et dynamique",
  price_by_hour: 34
  )
  file_37 = URI.open("https://image.freepik.com/photos-gratuite/portrait-gros-plan-sourire-jeune-fille-asiatique-debout-mains-croisees-regardant-camera_171337-11267.jpg")
  laura.avatar.attach(io: file_37, filename: "avatar-#{laura.first_name}.jpeg", content_type: 'image/jpeg')



  jean = User.create!(
  first_name: "Jean",
  last_name: "Raffi",
  company_name: "",
  role: "freelancer",
  email:"jraf@gmail.com",
  password: "1011121314",
  phone_number: "0754321245",
  address: "5 rue des petites écuries, 75010 Paris",
  description: "Souriant et disponible",
  price_by_hour: 36
  )

  file_38 = URI.open("https://image.freepik.com/photos-gratuite/portrait-gros-plan-sourire-jeune-fille-asiatique-debout-mains-croisees-regardant-camera_171337-11267.jpg")
  jean.avatar.attach(io: file_38, filename: "avatar-#{jean.first_name}.jpeg", content_type: 'image/jpeg')


  health_sens = User.create!(
  first_name: "Jean",
  last_name: "Pomme",
  company_name: "Health Sens",
  role: "company",
  email:"healthsens@gmail.com",
  password: "11121314",
  phone_number: "0754321245",
  address: "5 rue des saint pères, 75006 Paris",
  description: "Cabinet de professionnels dans le domaine du sport et du bien-être en entreprise",
  )

  file_1 = URI.open("https://image.freepik.com/vecteurs-libre/conception-du-yoga-creer-logo-vectoriel-equilibre_53876-40844.jpg")
  health_sens.avatar.attach(io: file_1, filename: "avatar-#{health_sens.first_name}.jpeg", content_type: 'image/jpeg')


  naturopathos = User.create!(
  first_name: "Pierre",
  last_name: "Nature",
  company_name: "Naturopathos",
  role: "company",
  email:"naturopathos@gmail.com",
  password: "11121319",
  phone_number: "0778786790",
  address: "5 avenue parmentier, 75011 Paris",
  description: "Cabinet de naturopathie",
  )

  file_3 = URI.open("https://image.freepik.com/photos-gratuite/huile-essentielle-basilic-sacre-dans-bouteille-verre-du-basilic-sacre-frais_51524-759.jpg")
  naturopathos.avatar.attach(io: file_3, filename: "avatar-#{naturopathos.first_name}.jpeg", content_type: 'image/jpeg')

  hairbeauty = User.create!(
  first_name: "Anna",
  last_name: "Bing",
  company_name: "Hair&Beauté",
  role: "company",
  email:"hairbeauty@gmail.com",
  password: "12131415",
  phone_number: "0777778888",
  address: "5 rue du louvre, 75001 Paris",
  description: "Salon de coiffure et de beauté de standing spécialisé dans le bio et la responsabilité environnementale",
  )

  file_4 = URI.open("https://image.freepik.com/vecteurs-libre/logo-colore-du-centre-beaute_18591-3420.jpg")
  hairbeauty.avatar.attach(io: file_4, filename: "avatar-#{hairbeauty.first_name}.jpeg", content_type: 'image/jpeg')

  lesbarbus = User.create!(
  first_name: "Edgar",
  last_name: "Swaan",
  company_name: "Les Barbus",
  role: "company",
  email:"lesbarbus@gmail.com",
  password: "12131415",
  phone_number: "0777778888",
  address: "11 rue jean mermoz, 75008 Paris",
  description: "Salon de coiffure et de beauté masculin dédié à l'art de la barbe pour les amooureux des poils et les défenseurs de l'art de vivre bio",
  )

  file_39 = URI.open("https://image.freepik.com/vecteurs-libre/logo-salon-coiffure-retro_23-2148420012.jpg")
  lesbarbus.avatar.attach(io: file_39, filename: "avatar-#{lesbarbus.first_name}.jpeg", content_type: 'image/jpeg')

  mamapam = User.create!(
  first_name: "Sarah",
  last_name: "Pamelo",
  company_name: "MamaPam",
  role: "company",
  email:"mamapam@gmail.com",
  password: "13141516",
  phone_number: "0711114455",
  address: "16 rue chappe, 75018 Paris",
  description: "nouvelle petite chaîne d'hôtel française",
  )

  file_5 = URI.open("https://image.freepik.com/vecteurs-libre/appartement-hotelier-ville_52683-10040.jpg")
  mamapam.avatar.attach(io: file_5, filename: "avatar-#{mamapam.first_name}.jpeg", content_type: 'image/jpeg')

  yuji = User.create!(
  first_name: "Alain",
  last_name: "Dujardin",
  company_name: "Yuji",
  role: "company",
  email:"yuji@gmail.com",
  password: "14151617",
  phone_number: "0754321245",
  address: "11 rue jean pierre timbaud, 75011 Paris",
  description: "Jeune entreprise spécialisé dans le yoga urban",
  )

  file_6 = URI.open("https://image.freepik.com/vecteurs-libre/yoga-meditation-logo-vector-icone-vintage_126523-234.jpg")
  yuji.avatar.attach(io: file_6, filename: "avatar-#{yuji.first_name}.jpeg", content_type: 'image/jpeg')

  petits_pas = User.create!(
  first_name: "Heloise",
  last_name: "Dupont",
  company_name: "Les Petits Pas",
  role: "company",
  email:"petitspas@gmail.com",
  password: "11213145",
  phone_number: "0678923045",
  address: "146 Boulevard Pereire, 75017 Paris",
  description: "Ecole Montessori Des Petits Pas pour une éductaion libre et autonome",
  )

  file_7 = URI.open("https://i.pinimg.com/originals/ce/29/ba/ce29ba2092140266b041bf3664d66381.jpg")
  petits_pas.avatar.attach(io: file_7, filename: "avatar-#{petits_pas.first_name}.jpeg", content_type: 'image/jpeg')

  mamanforever = User.create!(
  first_name: "Florent",
  last_name: "Lamarte",
  company_name: "Maman Forever",
  role: "company",
  email:"mamanforever@gmail.com",
  password: "11213144",
  phone_number: "0650927034",
  address: "43 Rue Saint-Maur, 75011 Paris",
  description: "Maison de naissance dédiée au bien-être de l’enfant et de la mère",
  )

  file_8 = URI.open("https://img.freepik.com/vecteurs-libre/illustration-design-plat-moderne-logo-femme-enceinte_8169-243.jpg?size=338&ext=jpg&ga=GA1.2.340501420.1598531339")
  mamanforever.avatar.attach(io: file_8, filename: "avatar-#{mamanforever.first_name}.jpeg", content_type: 'image/jpeg')

  le_wagon = User.create!(
  first_name: "Lamiaa",
  last_name: "El Fettahi",
  company_name: "Le Wagon",
  role: "company",
  email:"lewagon@gmail.com",
  password: "11213147",
  phone_number: "0678653145",
  address: "16 Villa Gaudelet, 75011 Paris",
  description: "Apprendre à coder pour changer de vie",
  )

  file_9 = URI.open("https://pbs.twimg.com/profile_images/1076177310015987712/7KkRJAXj_400x400.jpg")
  le_wagon.avatar.attach(io: file_9, filename: "avatar-#{le_wagon.first_name}.jpeg", content_type: 'image/jpeg')


  llamaste  = User.create!(
  first_name: "Samia",
  last_name: "Martin",
  company_name: "Llamaste",
  role: "company",
  email:"llamastem@gmail.com",
  password: "11213146",
  phone_number: "0678655146",
  address: "46 rue Lamartine, 75009 Paris",
  description: "Le yoga pour une vie plus sereine",
  )

  file_10 = URI.open("https://image.freepik.com/vecteurs-libre/dessin-pose-yoga-lama_42174-106.jpg")
  llamaste.avatar.attach(io: file_10, filename: "avatar-#{llamaste.first_name}.jpeg", content_type: 'image/jpeg')

  yoga_ohm  = User.create!(
  first_name: "Alexia",
  last_name: "Smeth",
  company_name: "Yoga Ohm",
  role: "company",
  email:"yogaohm@gmail.com",
  password: "11213176",
  phone_number: "0678655178",
  address: "74 rue du Moulin Vert, 75014 Paris",
  description: "Le yoga, la voix de l'équilibre",
  )

  file_11 = URI.open("https://image.freepik.com/vecteurs-libre/logo-beaute-fleur-plumeria_6711-299.jpg")
  yoga_ohm.avatar.attach(io: file_11, filename: "avatar-#{yoga_ohm.first_name}.jpeg", content_type: 'image/jpeg')



puts "Ending creating 10 fake users..."

puts "Creating 10 fake job categories..."

JobCategory.create!(
  name: "Yoga",
  description: "Expert en yoga, professeur titulaire d'un diplôme reconnu en France"
  )

JobCategory.create!(
  name: "Pilates",
  description: "Expert en pilates, professeurs titulaire d'un diplôme reconnu en France"
  )

JobCategory.create!(
  name: "Coiffure",
  description: "Expert en coiffure et en coloration titulaire d'un diplôme reconnu en France"
  )

JobCategory.create!(
  name: "Barbier",
  description: "Expert en coiffure et techniques de barbier titulaire d'un diplôme reconnu en France."
  )

JobCategory.create!(
  name: "Manucure",
  description: "Expert en esthétique titulaire d'un diplôme reconnu en France"
  )

JobCategory.create!(
  name: "Massage",
  description: "Expert en massage du visage et du corps titulaireaire d'un diplôme reconnu en France"
  )

JobCategory.create!(
  name: "Fitness",
  description: "Expert en fitness, professeur titulaireaire d'un diplôme reconnu en France"
  )

JobCategory.create!(
  name: "Pédicure",
  description: "Expert en esthétique, professionel() titulaireaire d'un diplôme reconnu en France"
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
  description: "La société Health&Sens est un cabinet de professionnels dans le domaine du sport et du bien-être en entreprise depuis plus de 10 ans, sur Paris et la région parisienne. Nous recherchons des professeurs de pilate sur Paris et la région Parisienne ( 77-78-91-92-93-94-95), afin de dispenser des cours auprès de nos clients le mardi de 12h30 à 13h30. Vous êtes diplômé en Pilates ? N’hésitez pas à nous contacter.",
  address: "14 rue Crespin du Gast, 75011 paris",
  price_by_hour: 30,
  start_date_time: "20200929123000",
  end_date_time: "20200929133000",
  job_category_id: JobCategory.minimum(:id),
  user_id: health_sens.id
  )
  file_12 = URI.open("https://images.unsplash.com/photo-1518609571773-39b7d303a87b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
  pilate.photos.attach(io: file_12, filename: 'mission-pilate-1.jpeg', content_type: 'image/jpeg')
  file_13 = URI.open("https://image.freepik.com/photos-gratuite/deux-femmes-forme-effectuant-pilate-ballon-exercice_107420-87774.jpg")
  pilate.photos.attach(io: file_13, filename: 'mission-pilate-2.jpeg', content_type: 'image/jpeg')

yoga_6 = Mission.create!(
  name: "Cours de Yoga",
  description: "La société Health&Sens est un cabinet de professionnels dans le domaine du sport et du bien-être en entreprise depuis plus de 10 ans, sur Paris et la région parisienne. Nous recherchons des professeurs de yoga sur Paris et la région Parisienne ( 77-78-91-92-93-94-95), afin de dispenser des cours auprès de nos clients le vendredi de 12h30 à 13h30. Vous êtes diplômé en Yoga? N’hésitez pas à nous contacter.",
  address: "14 rue Crespin du Gast, 75011 paris",
  price_by_hour: 30,
  start_date_time: "20200828123000",
  end_date_time: "20200828133000",
  job_category_id: JobCategory.minimum(:id),
  user_id: health_sens.id
  )
  file_40 = URI.open("https://images.unsplash.com/photo-1575052814086-f385e2e2ad1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80")
  yoga_6.photos.attach(io: file_40, filename: 'mission-yoga-40.jpeg', content_type: 'image/jpeg')
  file_41 = URI.open("https://yogafactory.fr/wp-content/uploads/2018/04/yoga-factory-evenement-etam.jpg")
  yoga_6.photos.attach(io: file_41, filename: 'mission-yoga-41.jpeg', content_type: 'image/jpeg')

yoga_7 = Mission.create!(
  name: "Cours de Yoga",
  description: "La société Health&Sens est un cabinet de professionnels dans le domaine du sport et du bien-être en entreprise depuis plus de 10 ans, sur Paris et la région parisienne. Nous recherchons des professeurs de yoga sur Paris et la région Parisienne ( 77-78-91-92-93-94-95), afin de dispenser des cours auprès de nos clients le vendredi de 12h30 à 13h30. Vous êtes diplômé en Yoga? N’hésitez pas à nous contacter.",
  address: "46 rue des Envierges, 75020 paris",
  price_by_hour: 30,
  start_date_time: "20200918123000",
  end_date_time: "20200918133000",
  job_category_id: JobCategory.minimum(:id),
  user_id: health_sens.id
  )
  file_42 = URI.open("https://www.anousparis.fr/app/uploads/2018/02/yay-yoga-paris-17-studio-cardinet-7-1024x681.jpg")
  yoga_7.photos.attach(io: file_42, filename: 'mission-yoga-42.jpeg', content_type: 'image/jpeg')
  file_43 = URI.open("https://www.yoga-brest.fr/images/salle-yoga-brest-espace-vivre-mieux.jpg")
  yoga_7.photos.attach(io: file_43, filename: 'mission-yoga-43.jpeg', content_type: 'image/jpeg')

yoga_8 = Mission.create!(
  name: "Cours de Yoga",
  description: "La société Health&Sens est un cabinet de professionnels dans le domaine du sport et du bien-être en entreprise depuis plus de 10 ans, sur Paris et la région parisienne. Nous recherchons des professeurs de yoga sur Paris et la région Parisienne ( 77-78-91-92-93-94-95), afin de dispenser des cours auprès de nos clients le vendredi de 12h30 à 13h30. Vous êtes diplômé en Yoga? N’hésitez pas à nous contacter.",
  address: "14 rue Crespin du Gast, 75011 paris",
  price_by_hour: 30,
  start_date_time: "20200925123000",
  end_date_time: "20200925133000",
  job_category_id: JobCategory.minimum(:id),
  user_id: health_sens.id
  )
  file_44 = URI.open("https://www.luxebytrendy.com/wp-content/uploads/2019/03/yoga-factory-studio-photo-interieure.jpg")
  yoga_8.photos.attach(io: file_44, filename: 'mission-yoga-44.jpeg', content_type: 'image/jpeg')
  file_45 = URI.open("https://yogafactory.fr/wp-content/uploads/2018/04/yoga-factory-evenement-etam.jpg")
  yoga_8.photos.attach(io: file_45, filename: 'mission-yoga-45.jpeg', content_type: 'image/jpeg')

yoga = Mission.create!(
  name: "Cours de Yoga",
  description: "Yuji est une jeune entreprise spécialisée dans le yoga urban. Nous possédons trois salles dans Paris et nous avons pensé nos espaces comme de vrais refuges urbans où calme, silence et détente sont nos crédos. Nous sommes à la recherche d'un professeur de yoga spécialisé dans le Yin & Vinyasa et qui est rompu à la pratique de séances sous infrarouge. Une sensibilité à la musique inspirante mais contemporaine serait grandement appréciée. Nous avons besoin en priorité de remplir notre créneau du samedi de 11h à 12h.",
  address: "64 Rue des Archives, 75004 Paris",
  price_by_hour: 35,
  start_date_time: "20200928123000",
  end_date_time: "20200928133000",
  job_category_id: JobCategory.minimum(:id),
  user_id: yuji.id
  )
  file_14 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/05/b7/63/52/pranamaya-yoga-studio.jpg")
  file_15 = URI.open("https://www.anousparis.fr/app/uploads/2018/02/yay-yoga-paris-17-studio-cardinet-7-1024x681.jpg")
  yoga.photos.attach(io: file_14, filename: 'mission-yoga-1.jpeg', content_type: 'image/jpeg')
  yoga.photos.attach(io: file_15, filename: 'mission-yoga-2.jpeg', content_type: 'image/jpeg')


coiffure = Mission.create!(
  name: "Séance de coiffures",
  description: "Le salon Hair&Beauté est un salon de coiffure installé depuis 5 ans dans le 4e à Paris. Nous avons une clientèle jeune, dynamique à la recherche du chic, de l'innovation et des dernières tendances. Nous ouvrons un créneau horaire spécialisé en coiffure de soirée pour nos clientes le vendredi de 18h à 20h. Nous recherchons donc un coiffeur ou une coiffeuse spécialisé(e) dans les coiffures de soirée : chignon à la française, chignon banane, tresses, wavy, coiffure accessoirisé ... rien n'a de secret pour vous. N’hésitez pas à nous contacter.",
  address: "3 Rue du Roi de Sicile, 75004 Paris",
  price_by_hour: 40,
  start_date_time: "20200925123000",
  end_date_time: "20200925133000",
  job_category_id: JobCategory.minimum(:id) + 2,
  user_id: hairbeauty.id
  )

 file_16 = URI.open("https://images.unsplash.com/photo-1582095133179-bfd08e2fc6b3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
 coiffure.photos.attach(io: file_16, filename: 'mission-coiffure-1.jpeg', content_type: 'image/jpeg')
 file_17 = URI.open("https://image.freepik.com/photos-gratuite/fille-blonde-se-fait-coiffer_23-2148108868.jpg")
 coiffure.photos.attach(io: file_17, filename: 'mission-coiffure-2.jpeg', content_type: 'image/jpeg')


barbier = Mission.create!(
  name: "Atelier barbier",
  description: "En complément pour animer notre salon de coiffure. Salon de coiffure masculine de standing spécialisé dans l'art de la barbe et des produits bio, nous cherchons un artiste de la barbe pour satisfaire nos clients les plus pointus pour compléter le planning du vendredi soir. Une connaissance approfondie des protocles de soins avec les gammes masculines Mr Moustache serait très appréciée. Le créneau horaire que nous proposons pour l'instant est le vendredi de 18h à 19h. Des horaires complémentaires pourraient être proposés par la suite.",
  address: "4 Boulevard de Sébastopol, 75004 Paris",
  price_by_hour: 32,
  start_date_time: "20201025123000",
  end_date_time: "20201025133000",
  job_category_id: JobCategory.minimum(:id) + 3,
  user_id: lesbarbus.id
  )

 file_18 = URI.open("https://images.unsplash.com/photo-1503951914875-452162b0f3f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
 barbier.photos.attach(io: file_18, filename: 'mission-barbier_1.jpeg', content_type: 'image/jpeg')
 file_19 = URI.open("https://image.freepik.com/photos-gratuite/coiffeur-masculin-hipster-debout-pres-salon-coiffure_23-2148181881.jpg")
 barbier.photos.attach(io: file_19, filename: 'mission-barbier_2.jpeg', content_type: 'image/jpeg')


massage = Mission.create!(
  name: "Séances de massage",
  description: "Séances de massage pour nos clients. MamaPam est une nouvelle petite chaîne d'hôtel française souhaitant proposé une expérience différente et nouvelle à ses clients. Pour nos hotels parisiens, nous souhaitons mettre en place des séances de massage avec les soins concoctés à base de miel des toits de Paris et d'huile naturelle locale. Nous sommes à la recherche d'une masseuse ou d'un masseur expérimenté spécialisée dans les messages détentes sous infrarouge. Nous avons besoin en priori de remplir notre créneau du samedi de 17h à 20h.",
  address: "109 Rue de Bagnolet, 75020 Paris",
  price_by_hour: 30,
  start_date_time: "20201027123000",
  end_date_time: "20201027133000",
  job_category_id: JobCategory.minimum(:id) + 5,
  user_id: mamapam.id
  )

  file_20 = URI.open("https://images.unsplash.com/photo-1591343395082-e120087004b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
  massage.photos.attach(io: file_20, filename: 'massage-20.jpeg', content_type: 'image/jpeg')
  file_21 = URI.open("https://image.freepik.com/photos-gratuite/voyante-coup-femme-pierres_23-2148531258.jpg")
  massage.photos.attach(io: file_21, filename: 'massage-21.jpeg', content_type: 'image/jpeg')



puts "Ending creating 6 fake missions..."

yoga_1 = Mission.create!(
  name: "Cours de Yoga",
  description: "Inspiré des enseignements de plus célèbres yogis européens, Health&Sens propose une nouvelle approche moderne et urbaine du yoga dans sa nouvelle salle du 17e. Salle chauffée à 30 degré, professeurs dynamiques et attentifs, salle à la décoration soignée, hygène impeccable et musique actuelle inspirante. Noous cherchons de nouveaux professeurs, venez rejoindre notre équipe",
  address: "56 Boulevard Pereire, 75017 Paris",
  price_by_hour: 38,
  start_date_time: Time.now + 6.days + 1.hours,
  end_date_time: Time.now + 6.days + 2.hours,
  job_category_id: JobCategory.minimum(:id),
  user_id: health_sens.id
  )

  file_22 = URI.open("https://image.freepik.com/photos-gratuite/belle-fille-est-engagee-dans-gymnase_1157-21989.jpg")
  yoga_1.photos.attach(io: file_22, filename: 'mission-yoga-22.jpeg', content_type: 'image/jpeg')
  file_23 = URI.open("https://image.freepik.com/photos-gratuite/cours-collectifs-yoga-interieur-du-gymnase_1303-17162.jpg")
  yoga_1.photos.attach(io: file_23, filename: 'mission-yoga-23.jpeg', content_type: 'image/jpeg')

  yoga_2 = Mission.create!(
  name: "Cours de Yoga",
  description: "Dédiée au bien-être de l’enfant et de la mère, notre maison de maternité souhaite mettre en place un cours de yoga pour femmes enceintes dans le cadre de la préparation à la naissance. Nous aimerions leur offrir un temps de sérénité pour relâcher leurs angoisses et leurs craintes. Nous disposons d’un joli local au calme avec tout le matériel adéquat : matelas, briques de mousse... Il ne nous manque plus qu’un professeur de yoga ! ",
  address: "43 Rue Saint-Maur, 75011 Paris",
  price_by_hour: 40,
  start_date_time: Time.now + 12.days + 8.hours,
  end_date_time: Time.now + 12.days + 9.hours,
  job_category_id: JobCategory.minimum(:id),
  user_id: mamanforever.id
  )

  file_24 = URI.open("https://images.unsplash.com/photo-1535571393765-ea44927160be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
  yoga_2.photos.attach(io: file_24, filename: 'mission-yoga-24.jpeg', content_type: 'image/jpeg')
  file_25 = URI.open("https://img.freepik.com/photos-gratuite/jeunes-femmes-enceintes-faisant-du-yoga-prenatal-meditation_1163-1722.jpg?size=626&ext=jpg&ga=GA1.2.340501420.1598531339")
  yoga_2.photos.attach(io: file_25, filename: 'mission-yoga-25.jpeg', content_type: 'image/jpeg')

  yoga_3 = Mission.create!(
  name: "Cours de Yoga",
  description: "Le wagon est une école de code qui a pour ambition de former des développeurs en 9 semaines. Pour accompagner cette formation intensive, nous cherchons un professeur de yoga pour proposer des ateliers de yoga. Nous disposons d’une belle salle en sous-sol extrêmement bien équipée pouvant accueillir une quinzaine de participants. Envie de rencontrer de jeunes amateurs motivés et à la recherche de détente et d’évasion mentale, joignez-nous à nous !",
  address: "16 Villa Gaudelet, 75011 Paris",
  price_by_hour: 36,
  start_date_time: Time.now + 4.days + 2.hours,
  end_date_time: Time.now + 4.days + 3.hours,
  job_category_id: JobCategory.minimum(:id),
  user_id: le_wagon.id
  )

  file_26= URI.open("https://images.unsplash.com/photo-1552058461-dc1828d58bf6?ixlib=rb-1.2.1&auto=format&fit=crop&w=747&q=80")
  yoga_3.photos.attach(io: file_26, filename: 'mission-yoga-26.jpeg', content_type: 'image/jpeg')


  yoga_4 = Mission.create!(
  name: "Cours de Yoga",
  description: "Llamaste est un havre urban calme et serein offrant des cours de yoga. Nous avons pensé nos salles comme de vrais refuges inspirants. Pour notre salle dans le 9e, nous sommes à la recherche d'un professeur de yoga expérimenté et très calme pour des séances de Yin Soft. Une sensibilité à la musique apaisante contemporaine serait un plus.",
  address: "46 Rue Lamartine, 75009 Paris",
  price_by_hour: 32,
  start_date_time: Time.now + 8.days + 5.hours,
  end_date_time: Time.now + 8.days + 6.hours,
  job_category_id: JobCategory.minimum(:id),
  user_id: llamaste.id
  )

  file_27 = URI.open("https://images.unsplash.com/photo-1565675007565-96028fe53d91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=749&q=80")
  yoga_4.photos.attach(io: file_27, filename: 'mission-yoga-27.jpeg', content_type: 'image/jpeg')


  yoga_5 = Mission.create!(
  name: "Cours de Yoga",
  description: "Yoga Ohm est une entreprise spécialisée dans le yoga urban et tendance. Nous possédons de nombreuses salles dans Paris et nous avons pensé chaque adresse comme de vrais ilôts de paix. Pour notre salle dans le 14e, nous cherchons un professeur de yoga polyvalent et fiable. ",
  address: "74 rue du Moulin Vert, 75014 Paris",
  price_by_hour: 37,
  start_date_time: Time.now + 10.days + 2.hours,
  end_date_time: Time.now + 10.days + 3.hours,
  job_category_id: JobCategory.minimum(:id),
  user_id: yoga_ohm.id
  )
  file_28 = URI.open("https://images.unsplash.com/photo-1535007829477-d13662ffb714?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1238&q=80")
  file_29 = URI.open("https://images.unsplash.com/photo-1520363147109-9ab9d1c8f8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1124&q=80")
  yoga_5.photos.attach(io: file_28, filename: 'mission-yoga-28.jpeg', content_type: 'image/jpeg')
  yoga_5.photos.attach(io: file_29, filename: 'mission-yoga-29.jpeg', content_type: 'image/jpeg')



puts "Creating 5 fake bookings..."

Booking.create!(
  mission_id: yoga_1.id,
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

Booking.create!(
  mission_id: yoga_6.id,
  user_id: User.minimum(:id),
  total_price: 100,
  freelancer_review: "",
  freelancer_rating: 4,
  company_review: "",
  company_rating: 5,
  status: "pending"
  )


Booking.create!(
  mission_id: yoga_7.id,
  user_id: User.minimum(:id),
  total_price: 100,
  freelancer_review: "",
  freelancer_rating: 4,
  company_review: "",
  company_rating: 5,
  status: "pending"
  )

Booking.create!(
  mission_id: yoga_8.id,
  user_id: User.minimum(:id),
  total_price: 100,
  freelancer_review: "",
  freelancer_rating: ,
  company_review: "",
  company_rating: ,
  status: "accepted"
  )
puts "Ending creating 5 fake skills..."
