var gulp = require("gulp");
var browserify = require("browserify");
var browserSync = require("browser-sync");
var babelify = require("babelify");
var source = require("vinyl-source-stream") // help us dealing with the data

var sync = browserSync.create();

var handleError = function(error){
  console.error("\nError: ", error.message, "\n");
  this.emit("end"); // keep running the app even if there is an error, gulp continues watching
}

gulp.task("serve", ["transpile"], function(){
  sync.init({
    server: "app"
  });
});

// transpiler: convert from one language to another
gulp.task("transpile", function(){
  browserify("src/js/index.js")
    .transform(babelify, {presets: ["es2015", "react"]})
    .bundle()
    .on("error", handleError)
    .pipe(source("bundle.js"))
    .pipe(gulp.dest("app/js"))
    .pipe(sync.reload({
      stream: true
    }));
});

gulp.task("watch-it", ["serve"], function(){
  gulp.watch("src/js/**/*.js", ["transpile"]);
  gulp.watch("app/index.html", sync.reload);
});

gulp.task("default", ["transpile"]);
