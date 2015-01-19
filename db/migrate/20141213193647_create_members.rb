class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
    	t.string :name
      t.string :email
      t.string :password_digest
      t.string :provider  
      t.string :uid
      t.string :oauth_token
      t.datetime :oauth_expires_at
      t.timestamps
    end
  end
end
