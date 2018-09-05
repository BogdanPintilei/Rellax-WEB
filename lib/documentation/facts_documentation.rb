# # frozen_string_literal: true
#
# module Documentation::FactsDocumentation
#   extend Apipie::DSL::Concern
#
#   api :GET, '/exercises/track_id/facts', 'Get all facts'
#   example '
#           [RESPONSE]
#             [
#               {
#                 "id": 8,
#                 "fact_title": "Title",
#                 "fact_category": "Category",
#                 "fact_content": "Content",
#                 "fact_image": "imge_url",
#                 "exercise_id": 1
#               },
#             ]'
#
#   def index; end
# end
