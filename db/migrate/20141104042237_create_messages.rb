class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :body
     	t.belongs_to :user
     	t.belongs_to :provider
      t.timestamps
    end
  end
end
