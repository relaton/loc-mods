# frozen_string_literal: true

require "shale"

module LocMods
  class RoleTerm < Shale::Mapper
    attribute :content, Shale::Type::String
    attribute :type, Shale::Type::String

    xml do
      root "roleTerm"
      namespace "http://www.loc.gov/mods/v3", nil

      map_content to: :content
      map_attribute "type", to: :type
    end
  end
end
