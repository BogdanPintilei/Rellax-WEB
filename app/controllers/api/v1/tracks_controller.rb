# frozen_string_literal: true

require 'documentation/tracks_documentation'

class Api::V1::TracksController < Api::V1::BaseController
  # include Documentation::TracksDocumentation

  api :GET, '/tracks', 'Get all tracks'
  def index
    @tracks = Track.all.order(created_at: :desc)
    render json: @tracks
  end

  private

  def track_params
    params.require(:track).permit(:track_name, :track_description, :track_image, :track_audio, track_metering_levels: [])
  end
end
