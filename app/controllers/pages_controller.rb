class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @websites = Website.all.select{|website| website.photo.attached?}
  end
end
