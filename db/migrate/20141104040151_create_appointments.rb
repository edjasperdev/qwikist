class CreateAppointments < ActiveRecord::Migration
  def change
  	create_table :appointments do |t|
      t.date :date
      t.time :time
      t.boolean :confirmed, default: false
      t.belongs_to :member, :provider, :location
      t.timestamps
    end
  end
end
