class Element < ApplicationRecord
  enum category: [:h1, :h2, :h3, :p, :img, :video, :list, :product]

  belongs_to :section
end
