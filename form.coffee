if Meteor.isClient
  $ ->
    $('#form').submit (e) -> e.preventDefault()
    $('#body').autosize()
    $('#head').focus()
    $('#body').keypress (event) ->
      if event.ctrlKey and event.keyCode == 13
        Pages.insert
          head: $('#head').val()
          body: $('#body').val()
        $('#head').val('').focus()
        $('#body').val('')
        event.preventDefault()
