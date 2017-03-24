class SearchController < ApplicationController


	def index
		@q = params['article'] && params['article']['q']
		return if @q.blank?

		@hits = Article.search(@q)
	end
end