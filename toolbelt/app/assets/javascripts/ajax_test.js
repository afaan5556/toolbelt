$(document).ready(function() {
  // $('body').on('ajax:success', function(event, response) {
  //   console.log(response)
  //   var test = JSON.parse(response);
  //   console.log(test);
  // })
  $('h1').on('click', function(){

    $.ajax({
      url: '/',
      type: 'GET'
    }).done(function(response){
      console.log(response)
      console.log(response.string)
    }).fail(function(){
      console.log(fail)
    });

  })
});