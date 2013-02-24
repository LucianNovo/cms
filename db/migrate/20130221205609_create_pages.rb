class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
    	t.integer "subject_id"
    	#t.references :subject # #will do the same thing 
	    t.string "name"
	    t.string "permalink"
	    t.integer "position"
	    t.boolean "visible"
      t.timestamps
    end
    add_index("pages","subject_id")
    add_index("pages","permalink")
  end
  def self.down
  
  end
end
