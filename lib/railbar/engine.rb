module Railbar
  class Engine < ::Rails::Engine
    isolate_namespace Railbar

    initializer "railbar.helpers" do
      ActiveSupport.on_load(:action_controller) do
        helper Railbar::ApplicationHelper
      end
    end

    #initializer "railbar.view_paths" do |app|
      #ActionController::Base.prepend_view_path(File.expand_path("app/views", __dir__))
    #end

    #initializer "railbar.load_custom_routes" do
      #puts "Custom routes for Railbar loaded from app/config/routes.rb"
      #paths["config/routes"] = "app/config/routes.rb"
    #end
  end
end
