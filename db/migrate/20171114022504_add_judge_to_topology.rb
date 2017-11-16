class AddJudgeToTopology < ActiveRecord::Migration[5.1]
  def change
    add_column :topologies, :judge, :string
  end
end
