module Railbar
  class Engine < ::Rails::Engine
    isolate_namespace Railbar

    initializer "railbar.helpers" do
      ActiveSupport.on_load(:action_controller) do
        helper Railbar::ApplicationHelper
      end
    end
  end
end
