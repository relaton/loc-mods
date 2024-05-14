# frozen_string_literal: true

require "shale"

require_relative "string_plus_language"

module LocMods
  class Date < Shale::Mapper
    attribute :content, StringPlusLanguage
    attribute :encoding, Shale::Type::String
    attribute :qualifier, Shale::Type::String
    attribute :point, Shale::Type::String
    attribute :key_date, Shale::Type::Value
    attribute :calendar, Shale::Type::String

    xml do
      root "recordChangeDate"
      namespace "http://www.loc.gov/mods/v3", "xmlns"

      map_content to: :content
      map_attribute "encoding", to: :encoding
      map_attribute "qualifier", to: :qualifier
      map_attribute "point", to: :point
      map_attribute "keyDate", to: :key_date
      map_attribute "calendar", to: :calendar
    end
  end
end