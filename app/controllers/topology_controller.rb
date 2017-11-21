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
    @vlans = Vlan.all
    gon.vlans = @vlans
  end

  def update
    if Vlan.find_by(start: params[:start])
      Vlan.find_by(start: params[:start]).update_attribute(:path, params[:path])
    elsif Vlan.find_by(end: params[:start])
      Vlan.find_by(end: params[:start]).update_attribute(:path, params[:path])
    end
  end

  def addvlan
    Vlan.create(vlanid: params[:newVlan], start: params[:start], end: params[:end], path: params[:path])
  end
end
