class ChangeNameColumnRestaurants < ActiveRecord::Migration
  def change
    rename_column :restaurants, :adresse, :address
  end
end
