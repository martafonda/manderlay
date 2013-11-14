class CastsController < ApplicationController
  # before_action :set_movie, except: [:show, :edit, :update]

  # def index
  #   @casts = Cast.all
  # end

  # def create
  #   @comment = @movie.comments.create comment_params
  #   @path = [@movie, @comment]
  #   respond_to do |format|
  #         if @comment.save
  #           format.html { redirect_to @movie, notice: 'Comment was successfully created.' }
  #           format.json { render action: 'show', status: :created, location: @movie }
  #         else
  #           format.html { render action: 'new' }
  #           format.json { render json: @comment.errors, status: :unprocessable_entity }
  #         end
  #     end
  # end

  # def show
  #   @cast = Cast.find(params[:id])
  # end

  # def new
  #   @movies = Movie.all
  #   @people = Person.all
  #   @cast = Cast.new
  # end

  # def edit
  #   @cast = Cast.find(params[:id])
  #   @movies = Movie.all
  #   @people = Person.all
  # end

  #   private
  # def set_movie
  #   @movie = Movie.find(params[:movie_id])
  # end
end
#   def update
#     @comment = Comment.find(params[:id])
#     @movie = @comment.movie
#     respond_to do |format|
#         if @comment.update(comment_params)
#           format.html { redirect_to @movie, notice: 'Comment was successfully updated.' }
#           format.json { head :no_content }
#         else
#           format.html { render action: 'edit' }
#           format.json { render json: @comment.errors, status: :unprocessable_entity }
#         end
#       end
#   end

#   def destroy
#   @comment.destroy
#   respond_to do |format|
#       format.html { redirect_to movie_path }
#       format.json { head :no_content }
#     end
#   end



#   def comment_params
#     params.require(:comment).permit(:author, :body)
#   end
# end
