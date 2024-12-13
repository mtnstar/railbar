module Railbar
  class Railtie < Rails::Railtie
    initializer "railbar.view_helpers" do
      ActiveSupport.on_load(:action_view) do
        require "railbar/helpers/view_helper"
        include Railbar::Helpers::ViewHelper
      end
    end
  end
end
