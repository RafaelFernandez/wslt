class AddWebsiteToSection < ActiveRecord::Migration[6.0]
  def change
    add_reference :sections, :website, null: false, foreign_key: true
  end
end
