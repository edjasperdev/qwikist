class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
    	t.time :time
    	t.date :date
    	t.belongs_to :member, :provider
      t.timestamps
    end
  end
end
