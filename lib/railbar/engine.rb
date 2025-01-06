module Railbar
  class Engine < ::Rails::Engine
    isolate_namespace Railbar

    initializer "railbar.helpers" do
      # Include helper only for non-API controllers
      if self < ActionController::Base
        helper Railbar::ApplicationHelper
      end
    end
  end
end
