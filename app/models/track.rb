class Track < ApplicationRecord
  serialize :track_metering_levels, Array
  has_many :facts
end
