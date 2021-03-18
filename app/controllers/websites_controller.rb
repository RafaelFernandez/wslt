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
  
  def builder
    @section_hero = Section.new(name: "hero")
    @section_bio = Section.new(name: "bio")
    @section_catchy = Section.new(name: "catchy_info")
    @section_pricing = Section.new(name: "pricing")

    @section_hero.elements.build(@section_hero.get_elements)
    @section_bio.elements.build(@section_bio.get_elements)
    @section_catchy.elements.build(@section_catchy.get_elements)
    @section_pricing.elements.build(@section_pricing.get_elements)
  end

private
  def website_params
    params.require(:website).permit(:name, :domain, :theme_id)
  end
end

