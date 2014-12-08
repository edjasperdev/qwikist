class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :service
      t.boolean :provider
      t.string :password_digest
      t.timestamps
    end
  end
end
