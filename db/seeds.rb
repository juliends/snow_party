GameAnswer.destroy_all
Game.destroy_all
Answer.destroy_all
Question.destroy_all
Quiz.destroy_all
# User.destroy_all
Player.destroy_all

owner = User.create(email: "dimitri@lewagon.org", password: "lewagon")

player = Player.create(email: 'anne@cinema.fr', disabled: true)

# quiz = Quiz.create(
#         user: owner,
#         name: "L'Homme Fidèle",
#         reward: "2 places de cinéma",
#         room: "3",
#         playable: true
#       )

# question1 = Question.create(content: "Votre fauteuil est-il suffisament confortable?",
#                             picture: '',
#                             quiz: quiz,
#                             category: 'confort')
# Answer.create(question: question1,
#               content: "OUI",
#               correct: true)
# Answer.create(question: question1,
#               content: "NON",
#               correct: true)

# question2 = Question.create(content: "Quelle a été la fréquentation des salles 2017 ?",
#                             picture: 'https://cdn-static.denofgeek.com/sites/denofgeek/files/2016/01/o-cinema-facebook.jpg',
#                             quiz: quiz,
#                             category: 'movie')
# Answer.create(question: question2,
#               content: "145 milions",
#               correct: false)
# Answer.create(question: question2,
#               content: "195 milions",
#               correct: false)
# Answer.create(question: question2,
#               content: "210 millions",
#               correct: true)

# question3 = Question.create(content: 'Louis Garrel a co-écrit son 1er film « Les deux amis » avec:',
#                             picture: 'http://fr.web.img4.acsta.net/c_215_290/pictures/15/07/10/15/26/039340.jpg',
#                             quiz: quiz,
#                             category: 'movie')
# Answer.create(question: question3,
#               content: "Arnaud Desplechin",
#               correct: false)
# Answer.create(question: question3,
#               content: "Christophe Honoré",
#               correct: true)
# Answer.create(question: question3,
#               content: "Philippe Garrel",
#               correct: false)

# question4 = Question.create(content: "Avec quel réalisateur Louis Garrel a-t-il tourné ?",
#                             picture: 'https://vz.cnwimg.com/thumbc-300x300/wp-content/uploads/2014/09/Louis-Garrel1.jpg',
#                             quiz: quiz,
#                             category: 'movie')
# Answer.create(question: question4,
#               content: "Steven Spielberg",
#               correct: false)
# Answer.create(question: question4,
#               content: "Bernardo Bertolucci",
#               correct: true)
# Answer.create(question: question4,
#               content: "Fabien Onteniente",
#               correct: false)

# question5 = Question.create(content: "Quel est le meilleur festival de film sous la neige ?",
#                             picture: 'https://c402277.ssl.cf1.rackcdn.com/photos/2325/images/hero_small/mountains-hero.jpg?1345838509',
#                             quiz: quiz,
#                             category: 'movie')
# Answer.create(question: question5,
#               content: "Festival des Arcs",
#               correct: true)
# Answer.create(question: question5,
#               content: "Festival Alpe d'Huez",
#               correct: false)

# puts "Seeded 🌱"

# Seed for Lyon

# quiz = Quiz.create!(
#         user: User.last,
#         name: "AG du SLEC",
#         reward: "",
#         room: "1",
#         playable: true
#       )

# question1 = Question.create(content: "En 1920 sort le film 'A travers l'orage' de David Wark Griffith, l'actrice principale était:",
#                             picture: 'orage.jpg',
#                             quiz: quiz,
#                             category: 'movie')
# Answer.create(question: question1,
#               content: "Victoria Principal",
#               correct: false)
# Answer.create(question: question1,
#               content: "Lillian Gish",
#               correct: true)
# Answer.create(question: question1,
#               content: "Jackelyn  Paratonnere",
#               correct: false)

# question2 = Question.create(content: "Le 31 janvier 1920 à Soissons, des spectateurs tirent au revolver sur l'écran devant un film avec Douglas Fairbanks:",
#                             picture: 'douglas-fairbanks.jpg',
#                             quiz: quiz,
#                             category: 'movie')
# Answer.create(question: question2,
#               content: "Luc Besson",
#               correct: false)
# Answer.create(question: question2,
#               content: "Victor Fleming",
#               correct: true)
# Answer.create(question: question2,
#               content: "John Ford",
#               correct: false)

# question3 = Question.create(content: "En 1920 sort un célèbre film expressionniste:",
#                             picture: 'caligari.jpg',
#                             quiz: quiz,
#                             category: 'movie')
# Answer.create(question: question3,
#               content: "Le cabinet du Dr Mabuse",
#               correct: false)
# Answer.create(question: question3,
#               content: "Le cabinet du Dr House",
#               correct: false)
# Answer.create(question: question3,
#               content: "Le cabinet du Dr Caligari",
#               correct: true)

# question4 = Question.create(content: "En 1920, les Frères Lumière mettent au point un procédé qu'ils font breveter:",
#                             picture: 'lumiere.jpg',
#                             quiz: quiz,
#                             category: 'movie')
# Answer.create(question: question4,
#               content: "La Photostéréosynthèse",
#               correct: true)
# Answer.create(question: question4,
#               content: "La plaque Autochrome",
#               correct: false)
# Answer.create(question: question4,
#               content: "La Cryogénine",
#               correct: false)

# question5 = Question.create(content: "Quel est votre centenaire anniversaire préféré ?",
#                             picture: 'cake.png',
#                             quiz: quiz,
#                             category: 'movie')
# Answer.create(question: question5,
#               content: "Celui de Kirk Douglas",
#               correct: false)
# Answer.create(question: question5,
#               content: "1995, l'invention du cinéma",
#               correct: false)
# Answer.create(question: question5,
#               content: "Les 100 ans du SLEC",
#               correct: true)

# puts "Seeded 🌱"



# Seed for Hirondelles

# quiz = Quiz.create!(
#         user: User.last,
#         name: "Daniel Darc, Pieces of my life",
#         reward: "",
#         room: "1",
#         playable: true,
#         school: false
#       )

# question1 = Question.create(content: "Le véritable nom de Daniel Darc était:",
#                             picture: 'q1.jpg',
#                             quiz: quiz,
#                             category: 'movie')
# Answer.create(question: question1,
#               content: "Daniele Rizzi",
#               correct: false)
# Answer.create(question: question1,
#               content: "Michel Darque",
#               correct: false)
# Answer.create(question: question1,
#               content: "Daniel Rozoum",
#               correct: true)

# question2 = Question.create(content: "En quelle année, est sorti le premier single de Taxi Girl: « Cherchez le garçon » ?",
#                             picture: 'q2.jpg',
#                             quiz: quiz,
#                             category: 'movie')
# Answer.create(question: question2,
#               content: "80",
#               correct: true)
# Answer.create(question: question2,
#               content: "83",
#               correct: false)
# Answer.create(question: question2,
#               content: "85",
#               correct: false)

# question3 = Question.create(content: "Un autre ancien membre de Taxi Girl a collaboré avec les plus grands artistes internationaux. Quel-est son nom ?",
#                             picture: 'q3.jpg',
#                             quiz: quiz,
#                             category: 'movie')
# Answer.create(question: question3,
#               content: "Mirwais",
#               correct: true)
# Answer.create(question: question3,
#               content: "Jacno",
#               correct: false)
# Answer.create(question: question3,
#               content: "Fred Chichin",
#               correct: false)

# question4 = Question.create(content: "En 2004, l’album qui signe le grand retour de Daniel Darc s’intitule ?",
#                             picture: 'q4.jpg',
#                             quiz: quiz,
#                             category: 'movie')
# Answer.create(question: question4,
#               content: "Chapelle Sixteen",
#               correct: false)
# Answer.create(question: question4,
#               content: "Crèvecœur",
#               correct: true)
# Answer.create(question: question4,
#               content: "Nijinski",
#               correct: false)

# question5 = Question.create(content: "Dans quelle catégorie Daniel Darc a-t-il remporté une victoire de la musique en 2005 ?",
#                             picture: 'q5.jpg',
#                             quiz: quiz,
#                             category: 'movie')
# Answer.create(question: question5,
#               content: "Album Rock",
#               correct: false)
# Answer.create(question: question5,
#               content: "Album Révélation",
#               correct: true)
# Answer.create(question: question5,
#               content: "Artiste interprète masculin",
#               correct: false)


quiz = Quiz.create!(
  user: User.last,
  name: "Les Hirondelles de Kaboul",
  reward: "",
  room: "1",
  playable: true,
  school: false
)

question1 = Question.create!(content: "Vous allez voir “Les Hirondelles de Kaboul”. Où se déroule l’action du film ?",
                            picture: 'q1.jpg',
                            quiz: quiz,
                            category: 'movie')

Answer.create!(question: question1,
              content: "En France",
              correct: false)

Answer.create!(question: question1,
              content: "Au Pakistan",
              correct: false)

Answer.create!(question: question1,
              content: "en Afghanistan",
              correct: true)


question2 = Question.create!(content: "Comment s’appelle le vêtement que les femmes devaient porter sous le régime des talibans à Kaboul ?",
                            picture: 'q2.jpg',
                            quiz: quiz,
                            category: 'movie')

Answer.create!(question: question2,
              content: "Le hijab (ou voile)",
              correct: false)

Answer.create!(question: question2,
              content: "Le Tchadri (ou la Burqa)",
              correct: true)

Answer.create!(question: question2,
              content: "La Djellaba",
              correct: false)

question3 = Question.create!(content: "En quelle langue le livre Les hirondelles de Kaboul a-t-il été écrit ?",
                            picture: 'q3.jpg',
                            quiz: quiz,
                            category: 'movie')

Answer.create!(question: question3,
              content: "en arabe",
              correct: false)

Answer.create!(question: question3,
              content: "en français",
              correct: true)

Answer.create!(question: question3,
              content: "en dari",
              correct: false)

question4 = Question.create!(content: "L’auteur du roman signe sous le pseudonyme de Yasmina Khadra. D’où vient ce nom?",
                            picture: 'q4.jpg',
                            quiz: quiz,
                            category: 'movie')

Answer.create!(question: question4,
              content: "Un anagramme",
              correct: false)

Answer.create!(question: question4,
              content: "les 2 prénoms de sa femme",
              correct: true)

Answer.create!(question: question4,
              content: "Son héroïne",
              correct: false)


puts "Seeded 🌱"
