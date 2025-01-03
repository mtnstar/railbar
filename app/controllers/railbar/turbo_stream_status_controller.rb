module Railbar
  class TurboStreamStatusController < TurboStatusBaseController
    skip_before_action :verify_authenticity_token
    def update
      render turbo_stream: turbo_stream.replace("railbar-turbo-stream-status", partial: "railbar/turbo_stream_status_ok")
    end
  end
end
