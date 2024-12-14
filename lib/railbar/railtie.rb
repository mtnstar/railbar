module Railbar
  class Railtie < Rails::Railtie
    initializer "railbar.view_helpers" do
      ActiveSupport.on_load(:action_view) do
        require "railbar/rails/view_helper"
        include Railbar::Rails::ViewHelper
      end
    end
    initializer "railbar.assets" do |app|
      app.config.assets.paths << File.expand_path('lib/railbar/rails/assets/stylesheets', __dir__)
    end
    initializer "railbar.view_paths" do
      ActionController::Base.prepend_view_path(File.expand_path("rails/views", __dir__))
    end
  end
end
