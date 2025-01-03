Rails.application.routes.draw do
  namespace "railbar" do
    get "turbo_frame_status", to: "turbo_frame_status#show"
    post "turbo_stream_status", to: "turbo_stream_status#update"
  end
end
