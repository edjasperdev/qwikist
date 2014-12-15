class CreateProviderLocations < ActiveRecord::Migration
  def change
    create_table :provider_locations, :id => false do |t|
    	t.belongs_to :provider, :location
      t.timestamps
    end

     add_index :provider_locations, :provider_id
    add_index :provider_locations, :location_id
  end
end
