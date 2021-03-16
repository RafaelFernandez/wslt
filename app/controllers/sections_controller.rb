class SectionsController < ApplicationController
  def index
    @sections = Section.order(:order)
  end
end
