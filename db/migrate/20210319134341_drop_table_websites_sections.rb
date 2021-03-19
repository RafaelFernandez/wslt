class DropTableWebsitesSections < ActiveRecord::Migration[6.0]
  def change
    drop_table :website_sections
  end
end
