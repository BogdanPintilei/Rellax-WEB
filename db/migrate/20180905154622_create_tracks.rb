class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :track_name
      t.string :track_description
      t.string :track_image
      t.string :track_audio
      t.string :track_metering_levels

      t.timestamps
    end
  end
end
