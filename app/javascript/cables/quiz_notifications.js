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
    container.classList.add('win');
    container.innerHTML = `
      <p class="emoji">🏆</p>
      <h1>Vous avez gagné</h1>
      <p class="content">Bravo ${winner_name}, rejoignez-nous sur scène pour recevoir votre cadeau</p>
    `
  } else {
    container.innerHTML = `
      <p class="emoji">👏</p>
      <h1>${winner_name} a gagné</h1>
      <p class="content">Rendez-vous à la prochaine séance pour un nouveau quiz</p>
    `
  }
  container.insertAdjacentHTML('beforeend', `
    <div class="no-phone">
      <div class="icon">📵</div>
      <div class="message">
        <strong>La séance va débuter</strong></br>
        Merci d'éteindre votre téléphone</div>
    </div>
  `)
}

export default initQuizNotification;
