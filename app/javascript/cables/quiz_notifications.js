const initQuizNotification = () => {
  const game = document.getElementById('player_screen');
  if (game) {
    const quiz_id = game.dataset.quizId;
    App[`quiz_notifications_${quiz_id}`] = App.cable.subscriptions.create(
      { channel: 'QuizNotificationChannel', quiz_id: quiz_id },
      {
        received: (data) => {
          document.getElementById('player_screen').innerHTML = data.message_partial;
          displayMessage();
        }
      }
    );
  }
}

const displayMessage = () => {
  const container = document.getElementById('end_game_screen');
  const current_player_id = document.getElementById('player_screen').dataset.currentPlayerId;
  const winner_id = container.dataset.winnerId;
  const winner_name = container.dataset.winnerName;
  if (current_player_id === winner_id) {
    container.innerHTML = `
      <h1>Vous avez gagné</h1>
      <p>Bravo ${winner_name}, rejoignez-nous sur scène pour recevoir votre cadeau</p>
    `
  } else {
    container.innerHTML = `
      <h1>Vous avez perdu</h1>
      <p>${winner_name} a été meilleur que vous</p>
    `
  }
}

export default initQuizNotification;
