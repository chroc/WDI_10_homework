
var get_gifs = function(){
  //..
  var gif = $("#search").val();
  var settings = {
    //..
    url: "http://api.giphy.com/v1/gifs/search",
    method: "get",
    dataType: "json",
    data: {
      q: gif,
      api_key: "dc6zaTOxFJmzC"
    }
  }
  $.ajax(settings).done(function(response){
    //..
    var gifs = response.data;
    var counter = 0;
    _.each(gifs, function(gif){
      //debugger;
      if (counter <= 10) {
        var html = Handlebars.templates.gif({
          url: gif.images.original.url
        });
        counter = counter+1;
      }
      $("#img_list").append(html);
    });
  });
};

$("#btn_search").on("click", get_gifs);
$(window).scroll(get_gifs);
