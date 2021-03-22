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
    authorize @website
  end
  
  def update
    if @website.update(website_params)
      redirect_to @website, notice: 'Website was updated'
    else
      render :edit
    end
  end
  
  def edit
    @website = Website.find(params[:id])
    authorize @website
  end
   
  def builder
    @sections = Website.find(params[:website_id]).sections
    @section_hero = Section.new(name: "hero")
    @section_bio = Section.new(name: "bio")
    @section_catchy = Section.new(name: "catchy_info")
    @section_pricing = Section.new(name: "pricing")
    
    @section_hero.elements.build(@section_hero.get_elements)
    @section_bio.elements.build(@section_bio.get_elements)
    @section_catchy.elements.build(@section_catchy.get_elements)
    @section_pricing.elements.build(@section_pricing.get_elements)
    
    @website = Website.find(params[:website_id])
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
    params.require(:website).permit(:name, :domain, :theme_id)
  end
end

