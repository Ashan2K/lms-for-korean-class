import express from "express";

const app = express();
const port = 3000;

app.get('/home', (req, res) => {
  res.send('Welcome to my server!');
});

const books = [
  {id: 1, title: 'Alice in Wonderland', author: 'Lewis Carrol'},
  {id: 2, title: 'Around the World in eighty days', author: 'Jules Verne'},
  {id: 3, title: 'Utopia', author: 'Sir Thomas Moor'},
 ]
 
 app.get('/api/books', (req, res) => {
  res.json(books)
 })

const functions = require("firebase-functions");

exports.helloWorld = functions.https.onRequest((req, res) => {
  res.send("Hello from Firebase!");
});


app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});