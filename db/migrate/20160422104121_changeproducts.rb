class Changeproducts < ActiveRecord::Migration
  def change
  	add_column :products, :quantity, :int
  end
end
