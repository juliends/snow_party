const initResultsTable = () => {
  const results = document.getElementById('quiz_results');
  if (results) {
    const quiz_id = results.dataset.quizId;
    App[`quiz_results_${quiz_id}`] = App.cable.subscriptions.create(
      { channel: 'QuizResultsChannel', quiz_id: quiz_id },
      {
        received: (data) => {
          document.getElementById('quiz_results').outerHTML = data.message_partial;
        }
      }
    );
  }
}

export default initResultsTable;
