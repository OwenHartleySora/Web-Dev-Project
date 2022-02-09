class AddVideoIdToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :video_id, :string
  end
end
