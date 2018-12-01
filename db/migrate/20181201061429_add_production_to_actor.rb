class AddProductionToActor < ActiveRecord::Migration
  def change
    add_column :actors, :production_id, :integer
    add_column :actors, :production_type, :string
  end
end
