class AddAddressToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :address, :text
  end
end
