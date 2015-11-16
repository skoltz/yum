class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
    	t.string :name
    	t.string :restaurant
    	t.string :address

      t.timestamps null: false
    end
  end
end
