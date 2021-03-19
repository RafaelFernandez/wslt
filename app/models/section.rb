class Section < ApplicationRecord
  belongs_to :website
  has_many :elements, dependent: :destroy

  accepts_nested_attributes_for :elements

  def get_elements
    SECTION_CONFIG[self.name.to_sym]
  end
end
