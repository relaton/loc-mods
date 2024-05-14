# frozen_string_literal: true

require "shale"

require_relative "string_plus_language_plus_authority"

module LocMods
  class Form < Shale::Mapper
    attribute :content, StringPlusLanguagePlusAuthority
    attribute :type, Shale::Type::String

    xml do
      root "form"
      namespace "http://www.loc.gov/mods/v3", "xmlns"

      map_content to: :content
      map_attribute "type", to: :type
    end
  end
end