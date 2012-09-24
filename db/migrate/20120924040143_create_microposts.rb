class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :name
      t.string :content
   	  t.string :user_id

      t.timestamps
    end
    add_index :microposts, :name
    add_index :microposts, :user_id
  end
end
