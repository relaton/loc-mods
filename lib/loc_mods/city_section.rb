# frozen_string_literal: true

require "shale"

require_relative "hierarchical_part"

module LocMods
  class CitySection < Shale::Mapper
    attribute :content, HierarchicalPart
    attribute :city_section_type, Shale::Type::Value

    xml do
      root "citySection"
      namespace "http://www.loc.gov/mods/v3", "xmlns"

      map_content to: :content
      map_attribute "citySectionType", to: :city_section_type
    end
  end
end