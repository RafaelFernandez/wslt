class Element < ApplicationRecord
  enum category: [:h1, :h2, :h3, :p, :img, :video, :list, :product]

  belongs_to :section

  def youtube_vid_id()
    url = URI.parse(self.value)
    video_params = CGI.parse(url.query)

    if video_params["v"]
      video_params["v"].first
    else
      url.path[1..]
    end
  end
end
