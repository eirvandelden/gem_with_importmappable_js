require "rails/engine"
require "importmap-rails"

module MyGem
  class Engine < Rails::Engine
    isolate_namespace MyGem

    initializer "my_gem.importmap", before: "importmap" do |app|
      # NOTE: this will add pins from this engine to the main app
      # https://github.com/rails/importmap-rails#composing-import-maps
      app.config.importmap.paths << root.join("config/importmap.rb")

      # NOTE: something about cache; I did not look into it.
      # https://github.com/rails/importmap-rails#sweeping-the-cache-in-development-and-test
      app.config.importmap.cache_sweepers << root.join("app/assets/javascripts")
    end

    initializer "my_gem assets precompile" do |app|
      app.config.assets.precompile += %w[my_gem/**/*.js]
    end
  end

  Gem.loaded_specs["my_gem"].dependencies.each do |d|
    require d.name
  end
end
