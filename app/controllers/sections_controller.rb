class SectionsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @sections = Section.order(:order)
  end

  def new
    @section = Section.new(name: params[:section])
    @website = Website.friendly.find(params[:website_id])
    @section.website = @website
    @section.elements.build(@section.get_elements)
  end

  def create
    @section = Section.new(section_params)
    @website = Website.friendly.find(params[:website_id])
    @section.website = @website
    if @section.save
      redirect_to website_builder_path(@website)
    else
      render :new
    end
  end

  def update
    @section = Section.find(params[:id])
    @section.elements.destroy_all
    if @section.update(section_params)
      redirect_to website_builder_path(@section.website)
    else
      render 'websites/builder'
    end
  end


  def section_params

    params[:section][:elements_attributes].each do |k, v|
      if v[:category] == 'product'
        v[:value] = v[:value].to_s
      end
    end
    params.require(:section).permit(:name, elements_attributes: [:name, :value, :category, :photo])
  end
end
