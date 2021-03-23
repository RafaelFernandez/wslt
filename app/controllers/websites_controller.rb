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
      redirect_to website_builder_path(@website)
    else
      render :new
    end
  end

  def builder
    @website = Website.find(params[:website_id])
    @sections = @website.sections

    @section_hero = @sections.find_by(name: "hero") || Section.new(name: "hero")
    @section_bio = @sections.find_by(name: "bio") || Section.new(name: "bio")
    @section_catchy = @sections.find_by(name: "catchy_info") || Section.new(name: "catchy_info")
    @section_pricing = @sections.find_by(name: "pricing") || Section.new(name: "pricing")

    @section_hero.elements.build(@section_hero.get_elements) if @section_hero.id.nil?
    @section_bio.elements.build(@section_bio.get_elements) if @section_bio.id.nil?
    @section_catchy.elements.build(@section_catchy.get_elements) if @section_catchy.id.nil?
    @section_pricing.elements.build(@section_pricing.get_elements) if @section_pricing.id.nil?

    @section_hero.website = @website
    @section_bio.website = @website
    @section_catchy.website = @website
    @section_pricing.website = @website

    @sections_map = {
      hero: @section_hero,
      bio: @section_bio,
      catchy_info: @section_catchy,
      pricing: @section_pricing
    }
  end

  def show
    @website = Website.find(params[:id])
    # raise
    render layout: @website.theme.name
  end

private
  def website_params
    params.require(:website).permit(:name, :domain, :theme_id)
  end
end
