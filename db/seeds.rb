GameAnswer.destroy_all
Game.destroy_all
Answer.destroy_all
Question.destroy_all
Quiz.destroy_all
User.destroy_all
Player.destroy_all

owner = User.create(email: "test@test.com", password: "123123")
player = Player.create(email: "player@test.com")

quiz = Quiz.create(
        user: owner,
        name: "Super Burger Quiz",
        reward: "1 place gratuite",
        room: "3"
      )

question1 = Question.create(content: "Dans « Astérix et Le secret de la Potion magique », qui fait la voix de Astérix ?", quiz: quiz)
Answer.create(question: question1,
              content: "Guillaume Briat",
              correct: false)
Answer.create(question: question1,
              content: "Daniel Mesguich",
              correct: false)
Answer.create(question: question1,
              content: "Christian Clavier",
              correct: true)

question2 = Question.create(content: "Qui a réalisé WILDLIFE ?", quiz: quiz)
Answer.create(question: question2,
              content: "Paul Dano",
              correct: true)
Answer.create(question: question2,
              content: "Paul Auster",
              correct: false)
Answer.create(question: question2,
              content: "James Cameroun",
              correct: false)

question3 = Question.create(content: "A quel personnage le dernier film de Rob Marshall fait référence ?", quiz: quiz)
Answer.create(question: question3,
              content: "Cendrillon",
              correct: false)
Answer.create(question: question3,
              content: "Mary Poppins",
              correct: true)
Answer.create(question: question3,
              content: "Blanche Neige",
              correct: false)

question4 = Question.create(content: "dans quelle ville se déroule LETO ?", quiz: quiz)
Answer.create(question: question4,
              content: "Leningrad",
              correct: true)
Answer.create(question: question4,
              content: "Saint Petersburg",
              correct: true)
Answer.create(question: question4,
              content: "Stalingrad",
              correct: false)

question5 = Question.create(content: "Combien de spectateurs sont venus au cinéma en 2017 ?", quiz: quiz)
Answer.create(question: question5,
              content: "145 milions",
              correct: false)
Answer.create(question: question5,
              content: "195 milions",
              correct: false)
Answer.create(question: question5,
              content: "210 millions",
              correct: true)

question6 = Question.create(content: "Votre fauteuil est il confortable ?", quiz: quiz)
Answer.create(question: question6,
              content: "OUI",
              correct: true)
Answer.create(question: question6,
              content: "NON",
              correct: true)

question7 = Question.create(content: "Trouvez vous ce cinéma propre et accueillant ?", quiz: quiz)
Answer.create(question: question7,
              content: "Au poil",
              correct: true)
Answer.create(question: question7,
              content: "Peut mieux faire",
              correct: true)
Answer.create(question: question7,
              content: "Laisse à désirer",
              correct: true)

game = Game.create(player: player, quiz: quiz, score: 1600)
quiz.questions.each do |question|
  GameAnswer.create(
    game: game,
    answer: question.answers.sample,
    start_at: Time.zone.now,
    ends_at: Time.zone.now + (4..9).to_a.sample
  )
end

puts "Seeded 🌱"
