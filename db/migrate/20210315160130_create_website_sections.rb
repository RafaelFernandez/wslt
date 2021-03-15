class CreateWebsiteSections < ActiveRecord::Migration[6.0]
  def change
    create_table :website_sections do |t|
      t.references :website, null: false, foreign_key: true
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
