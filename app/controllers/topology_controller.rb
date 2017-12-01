class TopologyController < ApplicationController

  def show
    @topologies = Topology.all
    gon.topologies = @topologies
    unless Warningtype.first == nil
      gon.warning = Warningtype.first
    end
  end

  def edit
    @topologies = Topology.all
    gon.topologies = @topologies
    @vlans = Vlan.all
    gon.vlans = @vlans
  end

  def update
    if Vlan.find_by(start: params[:start])
      Vlan.find_by(start: params[:start]).update_attributes(start: params[:start], end: params[:end], path: params[:path])
    elsif Vlan.find_by(end: params[:start])
      Vlan.find_by(end: params[:start]).update_attributes(start: params[:start], end: params[:end], path: params[:path])
    end
  end

  def configs
    unless Warningtype.first == nil
      @warnings = Warningtype.first
    else
      @warnings = Warningtype.new
    end
  end

  def configsmodify
    # Warningtype.find(1).update_attiributes(mild: params[:warings][:mild], moderate:params[:warings][:moderate], severe:params[:warings][:severe])
    unless Warningtype.first == nil
      Warningtype.first.update_attributes(mild: params[:warningtype][:mild], moderate: params[:warningtype][:moderate], severe: params[:warningtype][:severe])
    else
      Warningtype.create(mild: params[:warningtype][:mild], moderate: params[:warningtype][:moderate], severe: params[:warningtype][:severe])
    end
    redirect_to config_path
  end

  def addvlan
    Vlan.create(vlanid: params[:newVlan], start: params[:start], end: params[:end], path: params[:path])
  end

  def vlans
    @topologies = Topology.all
    gon.topologies = @topologies
    @vlans = Vlan.find_by(vlanid: 20)
    gon.vlans = @vlans
  end

end
