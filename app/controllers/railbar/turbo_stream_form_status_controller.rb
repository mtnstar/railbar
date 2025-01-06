module Railbar
  class TurboStreamFormStatusController < TurboStatusBaseController
    skip_before_action :verify_authenticity_token
    def update
      render turbo_stream: turbo_stream.replace("railbar-turbo-stream-post-status", partial: "railbar/turbo_stream_form_status_ok")
    end
  end
end
