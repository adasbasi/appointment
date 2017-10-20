class RemoveLastNameFromDoctor < ActiveRecord::Migration[5.1]
  def change
    remove_column :doctors, :last_name, :string
  end
end
