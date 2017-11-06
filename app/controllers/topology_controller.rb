class TopologyController < ApplicationController
  def show
    @topologies = Topology.all
  end
end
