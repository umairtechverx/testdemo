class Changeproduct < ActiveRecord::Migration
  def change
  	add_column :products, :pdescription, :text
  end
end
