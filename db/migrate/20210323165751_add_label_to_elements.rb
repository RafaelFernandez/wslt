class AddLabelToElements < ActiveRecord::Migration[6.0]
  def change
    add_column :elements, :label, :string
  end
end
