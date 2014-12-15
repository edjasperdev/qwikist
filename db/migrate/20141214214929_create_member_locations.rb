class CreateMemberLocations < ActiveRecord::Migration
  def change
    create_table :member_locations, :id => false do |t|
			t.belongs_to :member, :location
      t.timestamps
    end

    add_index :member_locations, :member_id
    add_index :member_locations, :location_id
  end
end
