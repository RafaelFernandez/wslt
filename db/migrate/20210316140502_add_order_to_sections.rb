class AddOrderToSections < ActiveRecord::Migration[6.0]
  def change
    add_column :sections, :order, :integer
  end
end
