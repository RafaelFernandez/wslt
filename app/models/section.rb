class Section < ApplicationRecord
  belongs_to :website
  has_many :elements, dependent: :destroy

  accepts_nested_attributes_for :elements

  def get_elements
    SECTION_CONFIG[self.name.downcase.to_sym][:elements]
  end

  def element_named(name)
    elements&.find_by(name: name)&.value
  end

  def self.get_content_of(section, section_name, element_name)
    # section.get_content_of("greeting")
    # raise if section_name == 'catchy'
    if section&.element_named(element_name).present?
      # return the content
      section&.element_named(element_name)
    else
      # return default content
      SECTION_CONFIG[section_name.downcase.tr_s(" ", "_").to_sym][:default][element_name.downcase.tr_s(" ", "_").to_sym]
    end
  end
end
