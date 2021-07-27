class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movie do |t|
      t.string :titles
      t.string :overview
      t.string :poster_url
      t.integer :rating

      t.timestamps
    end
  end
end
