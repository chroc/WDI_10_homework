$(document).ready(function({
  //.. Hint -> insted of button, use jQuery .submit
  var addPost = function(e){
    e.preventDefault();
    //..
    var settings = {
      //..
      url: "/wall",
      data: {
        //..
        "post[content]": $("#content").val()
      },
      method: "post",
      dataType: "json"
    }
    $.ajax(settings).done(function(response){
      //..
    })
  }

  $('#add-post').on('click', addPost)
}))
