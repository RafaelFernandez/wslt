class WebsitesController < ApplicationController

  def new
    @user = current_user
    @website = Website.new
    @website.build_theme
  end

  def create
    @website = Website.new(website_params)
    @website.user = current_user
    if @website.save
      redirect_to section_path(@section)
    else
      render :new
    end
  end

private
  def website_params
    params.require(:website).permit(:name, :domain, :theme_id)
  end
end

