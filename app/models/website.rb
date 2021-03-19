class Website < ApplicationRecord
  DOMAIN_OPTIONS = ['englishlanguageteacher.com', 'spanishlanguageteacher.com']
  THEMES = ['default', 'dudu']

  belongs_to :user
  belongs_to :theme, optional: true
  has_many :testimonials
  has_many :website_sections
  has_many :sections, through: :website_sections
  validates :domain, inclusion: { in: DOMAIN_OPTIONS }

  def section_named(name)
    sections&.find_by(name: name)
  end
end
