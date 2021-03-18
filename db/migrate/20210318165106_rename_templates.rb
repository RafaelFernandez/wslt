class RenameTemplates < ActiveRecord::Migration[6.0]
  def change
    rename_table :templates, :themes
    rename_column :websites, :template_id, :theme_id
  end
end
