class AddDuratonToTrack < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :track_duration, :string
  end
end
