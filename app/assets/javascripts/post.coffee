$ ->
  $(document).on 'click', '#btn_new_location', (evt) ->
    alert "Tracking started"
    postLocation = ->
      if navigator.geolocation
        navigator.geolocation.getCurrentPosition ((position) ->
          $.ajax '/locations',
            type: 'POST'
            # Añadir esto para error de 401 unauthorized
            beforeSend: (xhr) ->
              xhr.setRequestHeader 'X-CSRF-Token', $('meta[name="csrf-token"]').attr('content')
            data: {
              location:{
                latitude: position.coords.latitude
                longitude: position.coords.longitude
              }
            }
            error: (jqXHR, textStatus, errorThrown) ->
              console.log("AJAX Error: #{textStatus}")
            success: (data, textStatus, jqXHR) ->
        )
      else
        alert "Error: you should allow your browser to locate you"

    postLocation()
    tracking = setInterval(postLocation,5000)

    $(document).on 'click', '#btn_stop_tracking', (evt) ->
      alert "Tracking Stoped"
      clearInterval(tracking)
      