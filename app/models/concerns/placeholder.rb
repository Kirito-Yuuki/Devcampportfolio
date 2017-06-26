module Placeholder
  extend Activesupport::Concern

  def self.image_generator(height:, width:)
    "https://placeholder.it/#{height}x#{width}"
  end
end