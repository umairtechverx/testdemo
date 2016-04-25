class Changes < ActiveRecord::Migration
  def change

    rename_column :products, :type, :ptype
  end
end
