Railbar::Engine.routes.draw do
  get "/railbar/turbo_frame_status", to: "railbar/turbo_frame_status#show"
end
