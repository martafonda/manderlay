class PeopleController < ApplicationController
  
  before_action :set_person, except: [:index, :new, :create]

  def index
    @people = Person.all
  end

  def create
    @person = Person.create person_params
    respond_to do |format|
          if @person.save
            format.html { redirect_to people_path(@person), notice: 'Person was successfully created.' }
            format.json { render action: 'show', status: :created, location: @movie }
          else
            format.html { render action: 'new' }
            format.json { render json: @person.errors, status: :unprocessable_entity }
          end
      end
  end

  def edit
  end

  def new
    @person = Person.new
  end

  def update
      @person = Person.find(params[:id])
      respond_to do |format|
        if @person.update(person_params)
          format.html { redirect_to people_path(@person), notice: 'Person was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @person.errors, status: :unprocessable_entity }
        end
      end
  end

  def show
    @movie = @person.movies
  end

  def destroy
  @person.destroy
  respond_to do |format|
      format.html { redirect_to people_path }
      format.json { head :no_content }
    end
  end

private
  def set_person
    @person = Person.find(params[:id])
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def person_params
    params.require(:person).permit(:name, :surname)
  end
end