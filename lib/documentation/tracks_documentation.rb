# # frozen_string_literal: true
#
# module Documentation::TracksDocumentation
#   extend Apipie::DSL::Concern
#
#   api :GET, '/tracks', 'Get all tracks'
#   example '
#           [RESPONSE]
#             [
#               {
#                   "id": 1,
#                   "track_name": "Name",
#                   "track_description": "Description",
#                   "track_image": "image",
#                   "track_audio": "audio",
#                   "track_metering_levels": [
#                       0,
#                       2,
#                       3
#                   ]
#               },
#               {
#                   "id": 1,
#                   "track_name": "Name",
#                   "track_description": "Description",
#                   "track_image": "image",
#                   "track_audio": "audio",
#                   "track_metering_levels": [
#                       0,
#                       2,
#                       3
#                   ]
#               }
#           ]'
#   def index; end
# end
