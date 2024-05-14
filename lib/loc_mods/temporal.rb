# frozen_string_literal: true

require "shale"

require_relative "date"

module LocMods
  class Temporal < Shale::Mapper
    attribute :content, Date
    attribute :authority, Shale::Type::String
    attribute :authority_uri, Shale::Type::Value
    attribute :value_uri, Shale::Type::Value

    xml do
      root "temporal"
      namespace "http://www.loc.gov/mods/v3", "xmlns"

      map_content to: :content
      map_attribute "authority", to: :authority
      map_attribute "authorityURI", to: :authority_uri
      map_attribute "valueURI", to: :value_uri
    end
  end
end