class CreateMemberLocations < ActiveRecord::Migration
  def change
    create_table :member_locations do |t|
			t.belongs_to :member, :location
      t.timestamps
    end
  end
end
