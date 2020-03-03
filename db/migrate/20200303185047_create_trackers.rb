class CreateTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :trackers do |t|
      t.string :referrer
      t.integer :count, default: 0
      t.timestamps
    end
  end
end
