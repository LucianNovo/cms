class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	    t.string "username", :limit => 40
	    t.string "email", :limit => 50
	    t.string "password", :limit => 20
	    t.boolean "authorized", :default => false, :null => false
      t.timestamps
    end
  end
  
  def self.down
  	drop_table :users
  end
end
