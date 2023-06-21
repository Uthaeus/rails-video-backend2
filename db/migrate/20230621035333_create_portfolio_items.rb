class CreatePortfolioItems < ActiveRecord::Migration[7.0]
  def change
    create_table :portfolio_items do |t|
      t.string :title
      t.text :description
      t.string :main_image
      t.string :thumb_image

      t.timestamps
    end
  end
end
