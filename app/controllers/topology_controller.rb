class TopologyController < ApplicationController
  def show
    # @topologies = Topology.select("id")
    @topologies = Topology.all
    gon.topologies = @topologies
  end

  def edit
    @topologies = Topology.all
    gon.topologies = @topologies
    @vlans = Vlan.all
    gon.vlans = @vlans
  end

  def modify
    @topologies = Topology.all
    gon.topologies = @topologies
  end

  def update
    @hoge = Vlan.find_by(vlanid: 10).update_attribute(:path, params[:path])
  end
end
