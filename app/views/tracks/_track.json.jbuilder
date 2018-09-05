json.extract! track, :id, :track_name, :track_description, :track_image, :track_audio, :track_metering_levels, :created_at, :updated_at
json.url track_url(track, format: :json)
