class Element < ApplicationRecord
  enum category: [:h1, :h2, :h3, :p, :img, :video, :list]

  belongs_to :section
end
