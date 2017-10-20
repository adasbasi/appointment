class CreateAppoints < ActiveRecord::Migration[5.1]
  def change
    create_table :appoints do |t|
      t.references :appointable, polymorphic: true
      t.text :note

      t.timestamps
    end
  end
end
