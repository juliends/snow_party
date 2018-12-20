GameAnswer.destroy_all
Game.destroy_all
Answer.destroy_all
Question.destroy_all
Quiz.destroy_all
User.destroy_all
Player.destroy_all

owner = User.create(email: "dimitri@lewagon.org", password: "lewagon")
# player1 = Player.create(email: "george@abitbol.com")
# player2 = Player.create(email: "monica@belucci.it")
# player3 = Player.create(email: "jean@dujardin.fr")
# player4 = Player.create(email: "quentin@dupieux.fr")
# player5 = Player.create(email: "eric@judor.fr")

quiz = Quiz.create(
        user: owner,
        name: "AVP L'homme fidèle",
        reward: "Exonération pour prochain film AD VITAM",
        room: "3",
        playable: true
      )

question1 = Question.create(content: "Etes vous confortablement installé dans votre fauteuil ?",
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

question5 = Question.create(content: "Quel est le meilleur festival de Montagne ?",
                            picture: 'https://www.telegraph.co.uk/content/dam/Travel/ski/K2-mountain-Andrzej-Bargiel-first-ski-descent-by-Piotr-Pawlus-Red-Bull-Content-Pool.jpg?imwidth=300',
                            quiz: quiz,
                            category: 'movie')
Answer.create(question: question5,
              content: "Festival des Arcs",
              correct: true)
Answer.create(question: question5,
              content: "Festival Alpe d'Huez",
              correct: false)

# question1 = Question.create(content: "Dans « Astérix et Le secret de la Potion magique », qui fait la voix d'Astérix ?",
#                             picture: 'https://www.asterix.com/wp-content/uploads/2018/04/secret-potion-magique-3b-400x400.png',
#                             quiz: quiz)
# Answer.create(question: question1,
#               content: "Guillaume Briat",
#               correct: false)
# Answer.create(question: question1,
#               content: "Daniel Mesguich",
#               correct: false)
# Answer.create(question: question1,
#               content: "Christian Clavier",
#               correct: true)

# question3 = Question.create(content: "A quel personnage le dernier film de Rob Marshall fait-il référence ?",
#                             picture: 'https://www.asterix.com/wp-content/uploads/2018/04/secret-potion-magique-3b-400x400.png',
#                             quiz: quiz,
#                             category: 'movie')
# Answer.create(question: question3,
#               content: "Cendrillon",
#               correct: false)
# Answer.create(question: question3,
#               content: "Mary Poppins",
#               correct: true)
# Answer.create(question: question3,
#               content: "Blanche Neige",
#               correct: false)


# question4 = Question.create(content: "Dans quelle ville se déroule « Leto » ?",
#                             picture: 'https://www.asterix.com/wp-content/uploads/2018/04/secret-potion-magique-3b-400x400.png',
#                             quiz: quiz)
# Answer.create(question: question4,
#               content: "Leningrad",
#               correct: true)
# Answer.create(question: question4,
#               content: "Saint Petersburg",
#               correct: true)
# Answer.create(question: question4,
#               content: "Stalingrad",
#               correct: false)

# question7 = Question.create(content: "Trouvez-vous ce cinéma propre et accueillant ?",
#                             picture: 'https://www.asterix.com/wp-content/uploads/2018/04/secret-potion-magique-3b-400x400.png',
#                             quiz: quiz)
# Answer.create(question: question7,
#               content: "Parfait",
#               correct: true)
# Answer.create(question: question7,
#               content: "Peut mieux faire",
#               correct: true)
# Answer.create(question: question7,
#               content: "Laisse à désirer",
#               correct: true)

# game1 = Game.create(player: player1, quiz: quiz, score: 1600)
# game2 = Game.create(player: player2, quiz: quiz, score: 1400)
# game3 = Game.create(player: player3, quiz: quiz, score: 1300)
# game4 = Game.create(player: player4, quiz: quiz, score: 1200)
# game5 = Game.create(player: player5, quiz: quiz, score: 1100)

# quiz.questions.each do |question|
#   GameAnswer.create(
#     game: game1,
#     answer: question.answers.sample,
#     start_at: Time.zone.now,
#     ends_at: Time.zone.now + (4..9).to_a.sample
#   )
# end

puts "Seeded 🌱"
