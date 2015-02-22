class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.text :title
      t.integer :total_points 
      t.timestamps null: false
    end
  end
end
