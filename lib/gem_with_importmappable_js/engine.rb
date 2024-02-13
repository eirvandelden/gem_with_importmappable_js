require "rails/engine"

module GemWithImportmappableJs
  class Engine < Rails::Engine
    isolate_namespace GemWithImportmappableJs

    initializer "gem_with_importmappable_js assets precompile" do |app|
      app.config.assets.precompile += %w[gem_with_importmappable_js/**/*.js]
    end
  end

  Gem.loaded_specs["gem_with_importmappable_js"].dependencies.each do |d|
    require d.name
  end
end
