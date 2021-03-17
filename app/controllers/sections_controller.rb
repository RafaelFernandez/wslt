class SectionsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @sections = Section.order(:order)
  end


  def new
    @section = Section.new(name: "hero")
    @section.elements.build(@section.get_elements)
  end

  def create
    @section = Section.new()
    # @section.user = current_user
    if @section.save
      redirect_to section_path(@section)
    else
      render :new
    end
  end

  def section_params
    # params.require(:section).permit(:)
  end
end
