class ChangeEmailColumnInProviders < ActiveRecord::Migration
  def change
		add_index :providers, :email
	end
end
