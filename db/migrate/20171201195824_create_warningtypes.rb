class CreateWarningtypes < ActiveRecord::Migration[5.1]
  def change
    create_table :warningtypes do |t|
      t.integer :mild
      t.integer :moderate
      t.integer :severe

      t.timestamps
    end
  end
end
