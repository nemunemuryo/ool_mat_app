class CreateTopologies < ActiveRecord::Migration[5.1]
  def change
    create_table :topologies do |t|
      t.string :dp_port1
      t.string :dp_port2
      t.float :delay

      t.timestamps
    end
  end
end
