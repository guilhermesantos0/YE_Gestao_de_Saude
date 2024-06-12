const concurrently = require('concurrently');

concurrently(
  [
    { command: 'npm start', name: 'front_end', cwd: 'front_end' },
    { command: 'npm start', name: 'back_end', cwd: 'back_end' }
  ],
  {
    prefix: 'name',
    killOthers: ['failure', 'success'],
    restartTries: 3,
  }
).then(
  () => {
    console.log('Both front-end and back-end have been started successfully.');
  },
  (error) => {
    console.error('An error occurred:', error);
  }
);
