class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :time
      t.boolean :booked
      t.belongs_to :user, :location, :provider
      t.timestamps
    end
  end
end
