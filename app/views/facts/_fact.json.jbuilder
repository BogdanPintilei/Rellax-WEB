json.extract! fact, :id, :fact_title, :fact_category, :fact_content, :fact_image, :track_id, :created_at, :updated_at
json.url fact_url(fact, format: :json)
