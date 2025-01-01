module Railbar
  class Engine < ::Rails::Engine
    isolate_namespace Railbar

    initializer "railbar.helpers" do
      ActiveSupport.on_load(:action_controller) do
        require_relative "app/helpers/application_helper"
        helper Railbar::ApplicationHelper
      end
    end

    initializer "railbar.view_paths" do |app|
      ActionController::Base.prepend_view_path(File.expand_path("app/views", __dir__))
    end
  end
end
