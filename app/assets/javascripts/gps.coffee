$ ->
  $(document).on 'click', '#btn_delete_all', (evt) ->
    $.ajax '/locations',
      type: 'DELETE'
      # Añadir esto para error de 401 unauthorized
      beforeSend: (xhr) ->
        xhr.setRequestHeader 'X-CSRF-Token', $('meta[name="csrf-token"]').attr('content')
      data: {
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        location.reload()
  

        
    
