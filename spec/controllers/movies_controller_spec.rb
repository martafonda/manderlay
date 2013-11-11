require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MoviesController do

  # This should return the minimal set of attributes required to create a valid
  # Movie. As you add validations to Movie, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { FactoryGirl.attributes_for(:movie) }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MoviesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all movies as @movies" do
      movie = FactoryGirl.create(:movie)
      get :index, {}, valid_session
      expect(assigns(:movies)).to eq([movie])
    end
  end

  describe "GET show" do
    it "assigns the requested movie as @movie" do
      movie = FactoryGirl.create(:movie)
      get :show, {:id => movie.to_param}, valid_session
      expect(assigns(:movie)).to eq(movie)
    end
  end

  describe "GET new" do
    it "assigns a new movie as @movie" do
      get :new, {}, valid_session
      expect(assigns(:movie)).to be_a_new(Movie)
    end
  end

  describe "GET edit" do
    it "assigns the requested movie as @movie" do
      movie = FactoryGirl.create(:movie)
      get :edit, {:id => movie.to_param}, valid_session
      expect(assigns(:movie)).to eq(movie)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Movie" do
        expect {
          post :create, {:movie => valid_attributes}, valid_session
        }.to change(Movie, :count).by(1)
      end

      it "assigns a newly created movie as @movie" do
        post :create, {:movie => valid_attributes}, valid_session
        expect(assigns(:movie)).to be_a(Movie)
        expect(assigns(:movie)).to be_persisted
      end

      it "redirects to the created movie" do
        post :create, {:movie => valid_attributes}, valid_session
        expect(response).to redirect_to(Movie.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved movie as @movie" do
        # Trigger the behavior that occurs when invalid params are submitted
        Movie.any_instance.stub(:save).and_return(false)
        post :create, {:movie => { "title" => "invalid value" }}, valid_session
        expect(assigns(:movie)).to be_a_new(Movie)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Movie.any_instance.stub(:save).and_return(false)
        post :create, {:movie => { "title" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested movie" do
        movie = FactoryGirl.create(:movie)
        # Assuming there are no other movies in the database, this
        # specifies that the Movie created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Movie.any_instance.should_receive(:update).with({ "title" => "MyString" })
        put :update, {:id => movie.to_param, :movie => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested movie as @movie" do
        movie = FactoryGirl.create(:movie)
        put :update, {:id => movie.to_param, :movie => valid_attributes}, valid_session
        expect(assigns(:movie)).to eq(movie)
      end

      it "redirects to the movie" do
        movie = FactoryGirl.create(:movie)
        put :update, {:id => movie.to_param, :movie => valid_attributes}, valid_session
        expect(response).to redirect_to(movie)
      end
    end

    describe "with invalid params" do
      it "assigns the movie as @movie" do
        movie = FactoryGirl.create(:movie)
        # Trigger the behavior that occurs when invalid params are submitted
        Movie.any_instance.stub(:save).and_return(false)
        put :update, {:id => movie.to_param, :movie => { "title" => "invalid value" }}, valid_session
        expect(assigns(:movie)).to eq(movie)
      end

      it "re-renders the 'edit' template" do
        movie = FactoryGirl.create(:movie)
        # Trigger the behavior that occurs when invalid params are submitted
        Movie.any_instance.stub(:save).and_return(false)
        put :update, {:id => movie.to_param, :movie => { "title" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested movie" do
      movie = FactoryGirl.create(:movie)
      expect {
        delete :destroy, {:id => movie.to_param}, valid_session
      }.to change(Movie, :count).by(-1)
    end

    it "redirects to the movies list" do
      movie = FactoryGirl.create(:movie)
      delete :destroy, {:id => movie.to_param}, valid_session
      expect(response).to redirect_to(movies_url)
    end
  end

end
