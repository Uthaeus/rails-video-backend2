class CreateBlogComments < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_comments do |t|
      t.text :content
      t.string :author
      t.integer :user_id
      t.references :blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
