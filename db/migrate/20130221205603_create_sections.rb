class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
	    t.string "page_id"
	    t.string "name"
	    t.integer "position"
	    t.boolean "visible"
	    t.string "content_type"
	    t.text "content"
      t.timestamps
    end
    add_index("sections","page_id")
  end
end
