class CreateAppointments < ActiveRecord::Migration
  def change
  	create_table :appointments do |t|
      t.datetime :date
      t.belongs_to :member, :provider
      t.timestamps
    end
  end
end
