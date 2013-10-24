class AddArticleIdToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :article_id, :integer
  end
end
