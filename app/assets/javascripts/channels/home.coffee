App.home = App.cable.subscriptions.create "HomeChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#topologies').append data['topology']
    # Called when there's incoming data on the websocket for this channel

  display: (topology) ->
    @perform 'display', topology: topology
