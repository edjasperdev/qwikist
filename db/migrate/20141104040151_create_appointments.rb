class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.time :time
      t.date :date
      t.boolean :booked
      t.belongs_to :user, :location
      t.timestamps
    end
  end
end
