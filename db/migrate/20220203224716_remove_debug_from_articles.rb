class RemoveDebugFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :debug, :boolean
  end
end
