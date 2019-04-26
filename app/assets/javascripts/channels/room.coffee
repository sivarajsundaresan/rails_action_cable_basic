App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    unless data.content.blank?
    	$("#messages-table").append '<div>' + '<div>'  + '<b>' + data.username + '</b>' + ":" + data.content + '</div>' + '</div>'
    	$('#message_content').val("")