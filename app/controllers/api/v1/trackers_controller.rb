class Api::V1::TrackersController < ApplicationController
  skip_before_action :authorized, only: [:show]

  def show
    referrer_header = request.headers["REQUEST_URI"]
    referrer_param = params[:id]
    request.headers[:HTTP_REFERER]
    binding.pry
    Tracker.find_or_create_by(referrer: referrer_param).increment!(:count)

    respond_to do |format|
      format.js { render "lib/tracker.js", url: api_v1_tracker(referrer_param) }
    end
  end
end
