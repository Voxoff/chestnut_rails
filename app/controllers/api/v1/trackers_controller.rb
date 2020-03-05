class Api::V1::TrackersController < ApplicationController
  skip_before_action :authorized, only: [:show]

  def show
    # referrer_header = request.headers["REQUEST_URI"]
    # referrer_param = params[:id]
    # request.headers[:HTTP_REFERER]
    return unless params[:url]
    Tracker.find_or_create_by(referrer: params[:url]).increment!(:count)

  end

  def url_params
    params.permit(:url)
  end
end
