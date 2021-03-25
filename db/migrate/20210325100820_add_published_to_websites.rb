class AddPublishedToWebsites < ActiveRecord::Migration[6.0]
  def change
    add_column :websites, :published, :boolean, default: false
  end
end
