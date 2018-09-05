# frozen_string_literal: true

require 'documentation/facts_documentation'

class Api::V1::FactsController < Api::V1::BaseController
  # include Documentation::FactsDocumentation

  before_action :set_track

  api :GET, '/tracks/:id/facts/', 'Get all facts'
  def index
    @facts = @tracks.facts.order(created_at: :desc)
    render json: @facts
  end

  private

  def set_track
    @tracks = Track.find(params[:track_id])
  end

  def fact_params
    params.require(:fact).permit(:fact_title, :fact_category, :fact_content, :fact_image, :track_id)
  end
end
