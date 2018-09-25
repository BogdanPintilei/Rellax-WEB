# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Track.create([
               { track_name: 'Track', track_description: 'Description', track_image: 'https://idk', track_audio: 'https://idk2',
                 track_metering_levels: [1, 2, 3, 4, 5] },
               { track_name: 'Track', track_description: 'Description', track_image: 'https://idk', track_audio: 'https://idk2',
                 track_metering_levels: [1, 2, 3, 4, 5] },
               { track_name: 'Track', track_description: 'Description', track_image: 'https://idk', track_audio: 'https://idk2',
                 track_metering_levels: [1, 2, 3, 4, 5] },
               { track_name: 'Track', track_description: 'Description', track_image: 'https://idk', track_audio: 'https://idk2',
                 track_metering_levels: [1, 2, 3, 4, 5] }
             ])
