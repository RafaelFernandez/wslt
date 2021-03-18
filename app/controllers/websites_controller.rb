class WebsitesController < ApplicationController

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
end
