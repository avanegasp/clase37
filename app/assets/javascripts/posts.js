  function PostNewView(){
    alert("Hola Jade")
  }

  function PostIndexView(){
    $('form.form-ajax').submit(function(e){
      e.preventDefault()
      var $form = $(this);
      var url = $form.attr('action');

      $.ajax({
             type: "POST",
             url: url,
             data: $form.serialize(), // serializes the form's elements.
             dataType: 'json',
             success: function(data)
             {
                $('tbody').append(`<tr><td>${data.title}</td><td>${data.description}</td></tr>`)
                  // show response from the php script.
                $(':input[type="submit"]').prop('disabled',false)
             }
           });
      $form.trigger('reset')
    })


  $('.boton-posts').on('click', function(e){
      e.preventDefault()
      $.ajax({
             type: "get",
             url: "/",
             dataType: 'json',
             success: function(data)
             {
                console.log(data)
             }
           });

  })








  }

  // Post.prototype.load = function(){
  //   alert("Hola Jade")
  // }
