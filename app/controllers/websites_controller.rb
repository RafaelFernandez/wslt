class WebsitesController < ApplicationController
  # before_action :set_website, only: [:show, :bulider]
  include Pundit
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def index
    @websites = policy_scope(Website)
    # if no pundit - @websites = current_user.websites
  end

  def new
    # @user = current_user
    @website = Website.new
    @website.build_theme
    authorize @website
  end

  def create
    @website = Website.new(website_params)
    @website.user = current_user
    authorize @website

    if @website.save
      redirect_to website_builder_path(@website)
    else
      render :new
    end
  end

  def show
    @website = Website.find(params[:id])
    begin
      authorize @website
    rescue Pundit::NotAuthorizedError
      render file: "#{Rails.root}/public/404.html", layout: false, status: 404
    else
      # Everyone can see the page if it is published
      render layout: @website.theme.name
    end
  end

  def update
    @website = Website.find(params[:id])
    authorize @website
    if @website.update(website_params)
      redirect_to website_path(@website), notice: 'Website was updated'
    else
      redirect_to website_builder(@website)
    end
  end

  def edit
    @website = Website.find(params[:id])
    authorize @website
  end

  def builder
    @website = Website.find(params[:website_id])
    @sections = @website.sections

    @section_hero = @sections.find_by(name: "hero") || Section.new(name: "hero")
    @section_bio = @sections.find_by(name: "bio") || Section.new(name: "bio")
    @section_catchy = @sections.find_by(name: "catchy") || Section.new(name: "catchy")
    @section_pricing = @sections.find_by(name: "pricing") || Section.new(name: "pricing")
    @section_calendar = @sections.find_by(name: "calendar") || Section.new(name: "calendar")
    @section_contact = @sections.find_by(name: "contact") || Section.new(name: "contact")

    @section_hero.elements.build(@section_hero.get_elements) if @section_hero.id.nil?
    @section_bio.elements.build(@section_bio.get_elements) if @section_bio.id.nil?
    @section_catchy.elements.build(@section_catchy.get_elements) if @section_catchy.id.nil?
    @section_pricing.elements.build(@section_pricing.get_elements) if @section_pricing.id.nil?
    @section_calendar.elements.build(@section_calendar.get_elements) if @section_calendar.id.nil?
    @section_contact.elements.build(@section_contact.get_elements) if @section_contact.id.nil?

    @section_hero.website = @website
    @section_bio.website = @website
    @section_catchy.website = @website
    @section_pricing.website = @website
    @section_calendar.website = @website
    @section_contact.website = @website

    @sections_map = {
      hero: @section_hero,
      bio: @section_bio,
      catchy: @section_catchy,
      pricing: @section_pricing,
      calendar: @section_calendar,
      contact: @section_contact
    }

    authorize @website
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def set_website
    # @website = Website.find(params[:id])
    # authorize @website
  end

  def website_params
    params.require(:website).permit(:name, :domain, :theme_id, :published)
  end
end
