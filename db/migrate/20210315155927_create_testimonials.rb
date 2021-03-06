class CreateTestimonials < ActiveRecord::Migration[6.0]
  def change
    create_table :testimonials do |t|
      t.string :title
      t.text :content
      t.integer :rating
      t.references :website, null: false, foreign_key: true

      t.timestamps
    end
  end
end
