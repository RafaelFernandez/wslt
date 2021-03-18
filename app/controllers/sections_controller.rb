class SectionsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @sections = Section.order(:order)
  end

  def new
    @section = Section.new(name: params[:section])
    @section.elements.build(@section.get_elements)
  end

  def create
    @section = Section.new(section_params)
    # @section.user = current_user
    if @section.save
      redirect_to websites_builder_path
    else
      render :new
    end
  end

  def section_params
    params.require(:section).permit(:name, elements_attributes: [:name, :value, :category])
  end
end
