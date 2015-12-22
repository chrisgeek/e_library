class AddStatusToBooks < ActiveRecord::Migration
  def change
  	add_column :books, :returned, :boolean, :default => false
  end
end
