class CommentsController < ApplicationController
  before_action :set_movie, except: [:show, :edit]

	def index
	 	@comments = @movie.comments

	end

	def create
	 	@comment = @movie.comments.create comment_params
	 	@path = [@movie, @comment]
	 	respond_to do |format|
	      	if @comment.save
		        format.html { redirect_to @movie, notice: 'Comment was successfully created.' }
		        format.json { render action: 'show', status: :created, location: @movie }
	      	else
		        format.html { render action: 'new' }
		        format.json { render json: @comment.errors, status: :unprocessable_entity }
	      	end
    	end
	end

	def show
		@comment = Comment.find(params[:id])
	end

	def new
	 	@comment = @movie.comments.build
	 	@path = [@movie, @comment]
	end

	def edit
	 	@comment = Comment.find(params[:id])
	 	@path = [@movies,@comment]
	end

	def update
		@comment = @movie.comments.find(params[:id])
		respond_to do |format|
	      if @comment.update(comment_params)
	        format.html { redirect_to @movie, notice: 'Comment was successfully updated.' }
	        format.json { head :no_content }
	      else
	        format.html { render action: 'edit' }
	        format.json { render json: @comment.errors, status: :unprocessable_entity }
	      end
    	end
	end

	private
	def set_movie
		@movie = Movie.find(params[:movie_id])
	end

    def comment_params
      params.require(:comment).permit(:author, :body)
  	end
end