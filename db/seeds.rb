GameAnswer.destroy_all
Game.destroy_all
Answer.destroy_all
Question.destroy_all
Quiz.destroy_all
User.destroy_all
Player.destroy_all

owner = User.create(email: "dimitri@lewagon.org", password: "lewagon")

quiz = Quiz.create(
        user: owner,
        name: "L'Homme Fidèle",
        reward: "2x places de cinéma",
        room: "3",
        playable: true
      )

question1 = Question.create(content: "Votre fauteuil est-il suffisament confortable?",
                            picture: '',
                            quiz: quiz,
                            category: 'confort')
Answer.create(question: question1,
              content: "OUI",
              correct: true)
Answer.create(question: question1,
              content: "NON",
              correct: true)

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

question3 = Question.create(content: "Avec quel autre auteur Louis Garrel a-t-il co-écrit son 1er film: « Les deux amis » ?",
=======
question3 = Question.create(content: 'Louis Garrel a co-écrit son 1er film "Les deux amis" avec:',
>>>>>>> b525ed9ed44eab79de02f14f56e7b0fb1a7bf207
                            picture: 'http://fr.web.img4.acsta.net/c_215_290/pictures/15/07/10/15/26/039340.jpg',
                            quiz: quiz,
                            category: 'movie')
Answer.create(question: question3,
              content: "Arnaud Desplechin",
              correct: false)
Answer.create(question: question3,
              content: "Christophe Honoré",
              correct: true)
Answer.create(question: question3,
              content: "Philippe Garrel",
              correct: false)

question4 = Question.create(content: "Avec quel réalisateur Louis Garrel a-t-il tourné ?",
                            picture: 'https://vz.cnwimg.com/thumbc-300x300/wp-content/uploads/2014/09/Louis-Garrel1.jpg',
                            quiz: quiz,
                            category: 'movie')
Answer.create(question: question4,
              content: "Steven Spielberg",
              correct: false)
Answer.create(question: question4,
              content: "Bernardo Bertolucci",
              correct: true)
Answer.create(question: question4,
              content: "Fabien Onteniente",
              correct: false)

question5 = Question.create(content: "Quel est le meilleur festival de film sous la neige ?",
                            picture: 'https://www.telegraph.co.uk/content/dam/Travel/ski/K2-mountain-Andrzej-Bargiel-first-ski-descent-by-Piotr-Pawlus-Red-Bull-Content-Pool.jpg?imwidth=300',
                            quiz: quiz,
                            category: 'movie')
Answer.create(question: question5,
              content: "Festival des Arcs",
              correct: true)
Answer.create(question: question5,
              content: "Festival Alpe d'Huez",
              correct: false)

puts "Seeded 🌱"
