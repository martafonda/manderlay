class CommentsController < ApplicationController
  before_action :set_movie, except: [:show, :edit, :update, :destroy]

  def index
    @comments = @movie.comments
  end

  def create
    @comment = @movie.comments.create comment_params
    respond_to do |format|
          if @comment.save
            format.html { redirect_to movie_comments_path(@movie)}
            format.json { render action: 'show', status: :created, location: @movie }
          else
            format.html { render action: 'new' }
            format.json { render json: @comment.errors, status: :unprocessable_entity }
          end
      end
  end

  def show
    @comment = Comment.new
  end

  def new
    @comment = @movie.comments.build
  end

  def edit
    @comment = Comment.find(params[:id])
    @movie = @comment.movie
  end

  def update
    @comment = Comment.find(params[:id])
    @movie = @comment.movie
    respond_to do |format|
        if @comment.update(comment_params)
          format.html { redirect_to movie_comments_path(@movie) }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @movie = @comment.movie
    @comment.destroy
    respond_to do |format|
        format.html { redirect_to movie_comments_path(@movie) }
        format.json { head :no_content }
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