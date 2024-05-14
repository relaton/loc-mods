# frozen_string_literal: true

require "shale"

require_relative "string_plus_language_plus_authority"

module LocMods
  class PhysicalLocation < Shale::Mapper
    attribute :content, StringPlusLanguagePlusAuthority
    attribute :display_label, Shale::Type::String
    attribute :type, Shale::Type::String

    xml do
      root "physicalLocation"
      namespace "http://www.loc.gov/mods/v3", "xmlns"

      map_content to: :content
      map_attribute "displayLabel", to: :display_label
      map_attribute "type", to: :type
    end
  end
end