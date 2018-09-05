class FactSerializer < ActiveModel::Serializer
  attributes :id, :fact_title, :fact_category, :fact_content, :fact_image, :track_id
end
