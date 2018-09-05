class TrackSerializer < ActiveModel::Serializer
  attributes :id, :track_name, :track_description, :track_image, :track_audio, :track_metering_levels
end