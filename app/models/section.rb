class Section < ApplicationRecord
  has_many :website_sections
  has_many :websites, through: :website_sections
  has_many :elements

  accepts_nested_attributes_for :elements

  def get_elements
    SECTION_CONFIG[self.name.to_sym]
  end

  def element_named(name) 
    elements&.find_by(name: name).value
  end
end
