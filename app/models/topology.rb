class Topology < ApplicationRecord
  # after_create_commit { TopologyBroadcastJob.perform_later self }
end
