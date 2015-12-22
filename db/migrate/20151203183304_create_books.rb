class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
    	t.string :firstname
    	t.string :lastname
    	t.string :reg_number
    	t.string :phone
    	t.string :gender
    	t.string :category    	
    	t.string :title
    	t.string :author
      t.timestamps null: false
    end
  end
end
