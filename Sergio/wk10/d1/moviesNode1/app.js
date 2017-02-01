var app = require("express")();
var omdb = require('omdb');
const PORT = 3000;
var jquery = require('jquery');

// serving external js files in express, add this to your server file
// app.use(express.static('public'));

app.set("views", "./views");
app.set("view engine", "ejs");

app.get("/", function(req, res){
  if (req.query.name != undefined) {
    omdb.search(req.query.name, function(error, movies) {
      res.render('index', {movies: movies});
    });
  } else {
    res.render('index', {movies: undefined});
  }
});

// app.get("/movies", function(req, res) {
// });

app.listen(PORT, function(){
  console.log("Server up!!");
})
