class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmark do |t|
      t.string :comment
      t.integer :movie_id
      t.integer :list_id

      t.timestamps
    end
  end
end
