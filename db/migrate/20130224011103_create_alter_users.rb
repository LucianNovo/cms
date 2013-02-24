class CreateAlterUsers < ActiveRecord::Migration
  def change
    create_table :alter_users do |t|

      t.timestamps
    end
  end
end
