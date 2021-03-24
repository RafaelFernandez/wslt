class Section < ApplicationRecord
  belongs_to :website
  has_many :elements, dependent: :destroy

  accepts_nested_attributes_for :elements

  def get_elements
    SECTION_CONFIG[self.name.downcase.to_sym][:elements]
  end

  def element_named(name, hash_key)
    element = elements&.find_by(name: name)
    unless element.nil?
      return element.category.to_sym == :product ? eval(element.value)[hash_key] : element.value
    end

    nil
  end

  def self.get_content_of(section, section_name, element_name, hash_key = nil)
    # section.get_content_of("greeting")
    # raise if section_name == 'catchy'
    if section&.element_named(element_name, hash_key).present?
      # return the content
      section&.element_named(element_name, hash_key)
    else
      # return default content
      SECTION_CONFIG[section_name.downcase.tr_s(" ", "_").to_sym][:default][element_name.downcase.tr_s(" ", "_").to_sym]
    end
  end
end
