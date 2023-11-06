// app.js
const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => {
  res.json({ message: 'Hello from Node.js in Docker!' });
});

app.get('/about', (req, res) => {
  res.json({ about: 'This is an about page.' });
});

app.get('/users/:userId', (req, res) => {
  const userId = req.params.userId;
  res.json({ userId: userId, userName: 'User ' + userId });
});

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
