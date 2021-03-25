class AddSlugToWebsites < ActiveRecord::Migration[6.0]
  def change
    add_column :websites, :slug, :string
    add_index :websites, :slug, unique: true
  end
end
