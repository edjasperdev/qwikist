class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
    	t.string :name
    	t.string :email
    	t.string :service
    	t.string :password_digest

      t.timestamps
    end
  end
end
