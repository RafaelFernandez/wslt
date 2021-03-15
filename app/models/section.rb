class Section < ApplicationRecord
  has_many :website_sections
  has_many :websites, through: :website_sections
  has_many :elements
end
