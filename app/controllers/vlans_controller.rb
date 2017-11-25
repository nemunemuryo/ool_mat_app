class VlansController < ApplicationController

  def index
    @vlans = Vlan.all.order('vlanid ASC')
  end

  def show
    @vlan = Vlan.find_by(vlanid: params[:vlanid])
    gon.vlans = @vlan
    topologies = Topology.all
    gon.topologies = topologies
  end

  def destroy
    @vlan = Vlan.find_by(vlanid: params[:vlanid])
    @vlan.destroy
    redirect_to vlans_path
  end

  def edit
    @vlan = Vlan.find_by(vlanid: params[:vlanid])
    gon.vlans = @vlan
  end
end
