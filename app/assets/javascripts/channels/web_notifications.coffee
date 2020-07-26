App.room = App.cable.subscriptions.create "WebNotificationsChannel",
  received: (data) ->
    debugger
    $('#messages').append data['message']
    $('#calculator_title').val('')
