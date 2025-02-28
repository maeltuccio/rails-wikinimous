class RemoveStringFromArticles < ActiveRecord::Migration[7.1]
  def change
    remove_column :articles, :string, :string
  end
end
