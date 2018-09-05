# frozen_string_literal: true

class TracksController < ApplicationController
  before_action :set_track, only: %i[show edit update destroy]

  def index
    @tracks = Track.all
  end

  def show; end

  def new
    @track = Track.new
  end

  def edit; end

  def create
    @track = Track.new(track_params)

    respond_to do |format|
      if @track.save
        format.html { redirect_to @track, notice: 'Track was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /tracks/1
  # PATCH/PUT /tracks/1.json
  def update
    respond_to do |format|
      if @track.update(track_params)
        format.html { redirect_to @track, notice: 'Track was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @track.destroy
    respond_to do |format|
      format.html { redirect_to tracks_url, notice: 'Track was successfully destroyed.' }
    end
  end

  private

  def set_track
    @track = Track.find(params[:id])
  end

  def track_params
    track_params = params[:track]
    track_params[:track_metering_levels] = track_params[:track_metering_levels].split(',') || []

    track_params.slice!(:track_name, :track_description, :track_image, :track_audio, :track_metering_levels).permit!

    track_params[:track_metering_levels] = track_params[:track_metering_levels].map(&:to_f)

    track_params
  end
end
