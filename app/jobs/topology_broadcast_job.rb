class TopologyBroadcastJob < ApplicationJob
  queue_as :default

#  def perform(topology)
    # ActionCable.server.broadcast 'home_channel'#, topology: render_topology(topology)
    # Do something later
#  end

  # private
  #   def render_topology(topology)
      # ApplicationController.renderer.render(partial: 'topologies/topology', locals: { topology: topology })
      # ApplicationController.renderer.render(partial: 'topology/show', locals: { topology: topology })
    # end
end
