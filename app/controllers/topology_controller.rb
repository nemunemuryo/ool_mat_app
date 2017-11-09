class TopologyController < ApplicationController
  def show
    # @topologies = Topology.select("id")
    @topologies = Topology.all
  end
end
