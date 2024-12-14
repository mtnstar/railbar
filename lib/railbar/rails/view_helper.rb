module Railbar
  module Rails
    module ViewHelper
      def railbar
        render partial: "railbar/railbar", locals: { rails_env: ::Rails.env }
      end
    end
  end
end
