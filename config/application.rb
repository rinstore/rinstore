# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rinstore
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.items_pagination = {
      items_per_page: 12
    }

    config.item_image_cover = {
      empty_image_url: "https://dummyimage.com/300.png/09f/fff",
      empty_image_name: "No cover item"
    }
    config.item_description = {
      empty_item_name: -> { I18n.t(:empty_item_name) },
      empty_item_description: -> { I18n.t(:empty_item_description) }
    }
  end
end
