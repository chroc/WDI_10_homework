
$(document).ready(function(){
  var addCookie = function(){
    var settings = {
      url: "/cookies",
      data: {
        "cookie[name]": $("#name").val(),
        "cookie[description]": $("#description").val(),
        "cookie[price]": $("#price").val(),
        "cookie[tasty]": $("#tasty").val()
      },
      method: "post",
      dataType: "json"
    }
    $.ajax(settings).done(function(response){
      //..
      var $liElement = $("<li>"); // Similar to document.createElement
      var $strongElement = $("<strong>");
      var $spanElement = $("<span>");
      $strongElement.append(response.name);
      $liElement.append($strongElement);
      $spanElement.append(response.description);
      $liElement.append($spanElement);
      $("#cookies-list").append($liElement);
      console.log(response);
    });
  }

  // cookie button event listener
  $("#add-cookie").on("click", addCookie);
});
