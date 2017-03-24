class AddFileUploadsToArticleText < ActiveRecord::Migration[5.0]
  def change
    add_reference :article_text, :file_uploads, foreign_key: true
  end
end
