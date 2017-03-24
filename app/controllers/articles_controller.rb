require 'henkei'
class ArticlesController < ApplicationController
	def index
		# session[:text] = nil
		@text = session[:text]
		# @@pageText = ""
		# @this = @@pageText
		# articles = Articles.find(1)
		# contents = Tika::Resource.new(articles.filename)
		# puts contents.text
		render :layout => false
	end

	def show
		@article = Articles.find(params[:id])
	end

	def create
		@pageText = ""
		# file_data = params[:file]
		article = params[:file]
		# article = "Rangoli-01-17.pdf"
		File.open(article, "rb") do |io|
		reader = PDF::Reader.new(io)
			reader.pages.each do |page|
			@pageText += page.text
			end
		end
		session[:text] = @pageText

		# docs = 'Rangoli-01-17.pdf'
    # Docsplit.extract_text(docs, :ocr => false, :output => { @this })

		# file = params.delete(:file)
		# contents = File.open(file) {|io| io.read}
		# @extract = Henkei.new params[:data][:tempfile]
		# @extract.text
		# puts @extract
		# Article.get_pdf_paragraphs(params[:file_path])
		# 	@article = Article.new(title: params[:title], content: params[:file_path], extracted: @extract)
		# 	@article.save
			# if @article.save
			#   current = Article.find(params[:id])
			#   current.extracted = extract
			#   current.save
			#   redirect_to @article
			# else
			#   render :new
			# end
		redirect_to :back
	end

	# private
	# def article_params
	#   params.require(:article).permit(:title, :file)
	# end

end