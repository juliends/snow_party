const initCounter = () => {
  const counter = document.getElementById('player-counter');
  if (counter) {
    const quiz_id = counter.dataset.quizId;
    App[`players_counter_quiz_${quiz_id}`] = App.cable.subscriptions.create(
      { channel: 'PlayersCounterChannel', quiz_id: quiz_id },
      {
        received: (data) => {
          document.getElementById('player-counter').outerHTML = data.message_partial;
        }
      }
    );
  }
}

export default initCounter;
