module Railbar
  class TurboFrameStatusController < TurboStatusBaseController
    def show
      render partial: "railbar/turbo_frame_status_ok"
    end
  end
end
