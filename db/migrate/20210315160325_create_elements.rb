class CreateElements < ActiveRecord::Migration[6.0]
  def change
    create_table :elements do |t|
      t.string :name
      t.string :value
      t.integer :category
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
