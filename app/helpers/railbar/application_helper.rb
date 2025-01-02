module Railbar::ApplicationHelper
  def railbar
    rails_env = Rails.env
    rails_version = Rails.version
    rails_host = request.host
    locals = { rails_env: rails_env,
               rails_host: rails_host,
               rails_version: rails_version }
    render partial: "railbar/railbar", locals: locals
  end
end
