GameAnswer.destroy_all
Game.destroy_all
Answer.destroy_all
Question.destroy_all
Quiz.destroy_all
User.destroy_all
Player.destroy_all

owner = User.create(email: "test@test.com", password: "123123")
player1 = Player.create(email: "george@abitbol.com")
player2 = Player.create(email: "monica@belucci.it")
player3 = Player.create(email: "jean@dujardin.fr")
player4 = Player.create(email: "quentin@dupieux.fr")
player5 = Player.create(email: "eric@judor.fr")

quiz = Quiz.create(
        user: owner,
        name: "Super Burger Quiz",
        reward: "1 place gratuite",
        room: "3",
        playable: true
      )

question1 = Question.create(content: "Dans « Astérix et Le secret de la Potion magique », qui fait la voix d'Astérix ?",
                            picture: 'https://www.asterix.com/wp-content/uploads/2018/04/secret-potion-magique-3b-400x400.png',
                            quiz: quiz)
Answer.create(question: question1,
              content: "Guillaume Briat",
              correct: false)
Answer.create(question: question1,
              content: "Daniel Mesguich",
              correct: false)
Answer.create(question: question1,
              content: "Christian Clavier",
              correct: true)

question2 = Question.create(content: "Qui a réalisé Wildlife?",
                            picture: 'https://www.asterix.com/wp-content/uploads/2018/04/secret-potion-magique-3b-400x400.png',
                            quiz: quiz)
Answer.create(question: question2,
              content: "Paul Dano",
              correct: true)
Answer.create(question: question2,
              content: "Paul Auster",
              correct: false)
Answer.create(question: question2,
              content: "James Cameroun",
              correct: false)

question3 = Question.create(content: "A quel personnage le dernier film de Rob Marshall fait-il référence ?",
                            picture: 'https://www.asterix.com/wp-content/uploads/2018/04/secret-potion-magique-3b-400x400.png',
                            quiz: quiz)
Answer.create(question: question3,
              content: "Cendrillon",
              correct: false)
Answer.create(question: question3,
              content: "Mary Poppins",
              correct: true)
Answer.create(question: question3,
              content: "Blanche Neige",
              correct: false)

question4 = Question.create(content: "Dans quelle ville se déroule « Leto » ?",
                            picture: 'https://www.asterix.com/wp-content/uploads/2018/04/secret-potion-magique-3b-400x400.png',
                            quiz: quiz)
Answer.create(question: question4,
              content: "Leningrad",
              correct: true)
Answer.create(question: question4,
              content: "Saint Petersburg",
              correct: true)
Answer.create(question: question4,
              content: "Stalingrad",
              correct: false)

question5 = Question.create(content: "Combien de spectateurs sont venus au cinéma en 2017 ?",
                            picture: 'https://www.asterix.com/wp-content/uploads/2018/04/secret-potion-magique-3b-400x400.png',
                            quiz: quiz)
Answer.create(question: question5,
              content: "145 milions",
              correct: false)
Answer.create(question: question5,
              content: "195 milions",
              correct: false)
Answer.create(question: question5,
              content: "210 millions",
              correct: true)

question6 = Question.create(content: "Votre fauteuil est-il confortable ?",
                            picture: 'https://www.asterix.com/wp-content/uploads/2018/04/secret-potion-magique-3b-400x400.png',
                            quiz: quiz)
Answer.create(question: question6,
              content: "OUI",
              correct: true)
Answer.create(question: question6,
              content: "NON",
              correct: true)

question7 = Question.create(content: "Trouvez-vous ce cinéma propre et accueillant ?",
                            picture: 'https://www.asterix.com/wp-content/uploads/2018/04/secret-potion-magique-3b-400x400.png',
                            quiz: quiz)
Answer.create(question: question7,
              content: "Parfait",
              correct: true)
Answer.create(question: question7,
              content: "Peut mieux faire",
              correct: true)
Answer.create(question: question7,
              content: "Laisse à désirer",
              correct: true)

game1 = Game.create(player: player1, quiz: quiz, score: 1600)
game2 = Game.create(player: player2, quiz: quiz, score: 1400)
game3 = Game.create(player: player3, quiz: quiz, score: 1300)
game4 = Game.create(player: player4, quiz: quiz, score: 1200)
game5 = Game.create(player: player5, quiz: quiz, score: 1100)

quiz.questions.each do |question|
  GameAnswer.create(
    game: game1,
    answer: question.answers.sample,
    start_at: Time.zone.now,
    ends_at: Time.zone.now + (4..9).to_a.sample
  )
end

puts "Seeded 🌱"
