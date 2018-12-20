const initResultsTable = () => {
  const results = document.getElementById('quiz_results');
  if (results) {
    const quiz_id = results.dataset.quizId;
    App[`quiz_results_${quiz_id}`] = App.cable.subscriptions.create(
      { channel: 'QuizResultsChannel', quiz_id: quiz_id },
      {
        received: (data) => {
          document.getElementById('quiz_results').outerHTML = data.message_partial;
          highlightCurrentPlayer();
        }
      }
    );
  }
}

const highlightCurrentPlayer = () => {
  const current_player_id = document.getElementById('results-page').dataset.currentPlayerId;
  const players = document.querySelectorAll('#quiz_results tbody tr');
  players.forEach(player => {
    if (current_player_id === player.dataset.playerId) {
      player.classList.add('me');
    }
  })
}

export default initResultsTable;
