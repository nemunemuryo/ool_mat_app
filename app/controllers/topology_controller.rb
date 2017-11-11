class TopologyController < ApplicationController
  def show
    # @topologies = Topology.select("id")
    @topologies = Topology.all
    gon.topologies = @topologies
  end
end
