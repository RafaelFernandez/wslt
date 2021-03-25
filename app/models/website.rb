require "open-uri"

class Website < ApplicationRecord
  DOMAIN_OPTIONS = ['englishlanguageteacher.com', 'spanishlanguageteacher.com']


  belongs_to :user
  belongs_to :theme, optional: true
  has_many :testimonials, dependent: :destroy
  has_many :sections, dependent: :destroy
  validates :domain, inclusion: { in: DOMAIN_OPTIONS }
  has_one_attached :photo
  after_create :set_default_photo

  def set_default_photo
    file = URI.open("https://euroamerican.dk/photo/wslt/tempdesign1.png")
    self.photo.attach(io: file, filename: 'default-img.png', content_type: 'image/png')
  end

  def section_named(name)
    sections&.find_by(name: name)
  end
end
