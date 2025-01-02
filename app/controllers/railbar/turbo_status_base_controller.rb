module Railbar
  class TurboStatusBaseController < ActionController::Base
    #before_action :turbo_only!

    private
    def turbo_only!
      unless turbo_frame_request? || turbo_stream_request?
        raise ActionController::RoutingError, "This endpoint is only accessible via Turbo"
      end
    end

    def turbo_stream_request?
      request.format.turbo_stream?
    end
  end
end
