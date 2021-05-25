class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :country
      t.string :title
      t.string :visit_date
      t.string :review
      t.string :picture

      t.timestamps
    end
  end
end
