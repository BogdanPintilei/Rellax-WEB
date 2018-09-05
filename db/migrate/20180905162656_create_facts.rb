class CreateFacts < ActiveRecord::Migration[5.2]
  def change
    create_table :facts do |t|
      t.string :fact_title
      t.string :fact_category
      t.string :fact_content
      t.string :fact_image

      t.timestamps
    end
  end
end
