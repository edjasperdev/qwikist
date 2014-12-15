class CreateProviderLocations < ActiveRecord::Migration
  def change
    create_table :provider_locations do |t|
    	t.belongs_to :provider, :location
      t.timestamps
    end
  end
end
