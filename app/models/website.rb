class Website < ApplicationRecord
  DOMAIN_OPTIONS = ['englishlanguageteacher.com', 'spanishlanguageteacher.com']
  THEMES = ['default', 'dudu']

  belongs_to :user
  belongs_to :theme, optional: true
  has_many :testimonials, dependent: :destroy
  has_many :sections, dependent: :destroy
  validates :domain, inclusion: { in: DOMAIN_OPTIONS }
end
