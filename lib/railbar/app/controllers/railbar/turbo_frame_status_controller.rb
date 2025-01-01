module Railbar
  class TurboFrameStatusController < TurboStatusBaseController
    def show
      render text: "OK"
    end
  end
end
