class CreateVlans < ActiveRecord::Migration[5.1]
  def change
    create_table :vlans do |t|
      t.string :start
      t.string :end
      t.string :path

      t.timestamps
    end
  end
end
