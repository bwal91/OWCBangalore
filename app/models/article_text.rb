class ArticleText < ApplicationRecord
	belongs_to :file_upload

	searchable do
		text :title
		text :content 
	end

end