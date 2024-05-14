# frozen_string_literal: true

require "shale"

require_relative "string_plus_language_plus_supplied"

module LocMods
  class Extent < Shale::Mapper
    attribute :content, Shale::Type::String
    attribute :unit, Shale::Type::Value

    xml do
      root "extent"
      namespace "http://www.loc.gov/mods/v3", nil

      map_content to: :content
      map_attribute "unit", to: :unit
    end
  end
end
