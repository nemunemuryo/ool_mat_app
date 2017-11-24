class Topology < ApplicationRecord
  # after_create_commit { TopologyBroadcastJob.perform_later self }
  establish_connection(:production)
  # :adapter  => "mysql2",
  # :host     => "10.50.0.100",
  # :database => "ryu_db",
  # :username => "root",
  # :password => ""
#)
end
