class SectionsController < ApplicationController
  # skip_before_action :authenticate_user?

  def index
    @sections = Section.order(:order)
  end
end
