Rails.application.routes.draw do
  namespace "railbar" do
    get "turbo_frame_status", to: "turbo_frame_status#show"
  end
end
