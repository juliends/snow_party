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

3.times do |i|
  question = Question.create(content: "This is question #{i}", quiz: quiz)
  Answer.create(question: question, content: "This is an answer true", correct: true)
  2.times do
    Answer.create(question: question, content: "This is answer false", correct: false)
  end
end

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
