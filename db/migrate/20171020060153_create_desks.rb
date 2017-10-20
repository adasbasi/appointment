class CreateDesks < ActiveRecord::Migration[5.1]
  def change
    create_table :desks do |t|
      t.string :name
      t.string :location
      t.integer :time

      t.timestamps
    end
  end
end
