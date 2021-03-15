class Website < ApplicationRecord
  belongs_to :user
  belongs_to :template
  has_many :testimonials
  has_many :website_sections
  has_many :sections, through: :website_sections
end
