class Website < ApplicationRecord
  DOMAIN_OPTIONS = ['englishlanguageteacher.com', 'spanishlanguageteacher.com']
  THEMES = ['younglearners', 'business', 'general', 'examspreparation']

  belongs_to :user
  belongs_to :theme, optional: true
  has_many :testimonials, dependent: :destroy
  has_many :sections, dependent: :destroy
  validates :domain, inclusion: { in: DOMAIN_OPTIONS }

  extend FriendlyId
  friendly_id :name, use: :slugged

  def section_named(name)
    sections&.find_by(name: name)
  end
end
