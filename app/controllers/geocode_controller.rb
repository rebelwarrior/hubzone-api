# The controller for handling geocoding
class GeocodeController < ApplicationController
  def search
    s = params[:q]
    result = HubzoneUtil.search(s)
    render json: result.to_json, status: result[:http_status]
  end
end