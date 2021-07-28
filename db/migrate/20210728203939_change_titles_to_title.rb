class ChangeTitlesToTitle < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :titles, :title
  end
end
