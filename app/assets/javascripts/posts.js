  function PostNewView(){
    alert("Hola Jade")
  }

  function PostIndexView(){
    $('form').submit(function(e){
      e.preventDefault()
      var $form = $(this);
  var url = $form.attr('action');

  $.ajax({
         type: "POST",
         url: url,
         data: $form.serialize(), // serializes the form's elements.
         contentType: 'application/json',   
         success: function(data)
         {

            $('ul').prepend("hola Jade")
              // show response from the php script.
         }
       });
    })
  }

  // Post.prototype.load = function(){
  //   alert("Hola Jade")
  // }
