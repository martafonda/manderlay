require 'spec_helper'

describe CommentsController do

  # This should return the minimal set of attributes required to create a valid
  # Movie. As you add validations to Movie, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { FactoryGirl.attributes_for(:comment) }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MoviesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all comments as @comments" do
      comment = FactoryGirl.create(:comment)
      get :index, {}, valid_session
      expect(assigns(:comments)).to eq([comment])
    end
  end

  # describe "GET show" do
  #   it "assigns the requested comment as @comment" do
  #     comment = FactoryGirl.create(:comment)
  #     get :show, {:id => comment.to_param}, valid_session
  #     expect(assigns(:comment)).to eq(comment)
  #   end
  # end

  # describe "GET new" do
  #   it "assigns a new comment as @comment" do
  #     get :new, {}, valid_session
  #     expect(assigns(:comment)).to be_a_new(Movie)
  #   end
  # end

  # describe "GET edit" do
  #   it "assigns the requested comment as @comment" do
  #     comment = FactoryGirl.create(:comment)
  #     get :edit, {:id => comment.to_param}, valid_session
  #     expect(assigns(:comment)).to eq(comment)
  #   end
  # end

  # describe "POST create" do
  #   describe "with valid params" do
  #     it "creates a new Comment" do
  #       expect {
  #         post :create, {:comment => valid_attributes}, valid_session
  #       }.to change(Comment, :count).by(1)
  #     end

  #     it "assigns a newly created comment as @comment" do
  #       post :create, {:comment => valid_attributes}, valid_session
  #       expect(assigns(:comment)).to be_a(Comment)
  #       expect(assigns(:comment)).to be_persisted
  #     end

  #     it "redirects to the created comment" do
  #       post :create, {:comment => valid_attributes}, valid_session
  #       expect(response).to redirect_to(Comment.last)
  #     end
  #   end

  #   describe "with invalid params" do
  #     it "assigns a newly created but unsaved comment as @comment" do
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Comment.any_instance.stub(:save).and_return(false)
  #       post :create, {:comment => { "author" => "invalid value" }}, valid_session
  #       expect(assigns(:comment)).to be_a_new(Comment)
  #     end

  #     it "re-renders the 'new' template" do
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Comment.any_instance.stub(:save).and_return(false)
  #       post :create, {:comment => { "author" => "invalid value" }}, valid_session
  #       expect(response).to render_template("new")
  #     end
  #   end
  # end

  # describe "PUT update" do
  #   describe "with valid params" do
  #     it "updates the requested comment" do
  #       comment = FactoryGirl.create(:comment)
  #       # Assuming there are no other movies in the database, this
  #       # specifies that the Movie created on the previous line
  #       # receives the :update_attributes message with whatever params are
  #       # submitted in the request.
  #       Movie.any_instance.should_receive(:update).with({ "author" => "MyString" })
  #       put :update, {:id => comments.to_param, :comments => { "author" => "MyString" }}, valid_session
  #     end

  #     it "assigns the requested comments as @comments" do
  #       comments = FactoryGirl.create(:comments)
  #       put :update, {:id => comments.to_param, :comments => valid_attributes}, valid_session
  #       expect(assigns(:comments)).to eq(comments)
  #     end

  #     it "redirects to the comments" do
  #       comments = FactoryGirl.create(:comments)
  #       put :update, {:id => comments.to_param, :comments => valid_attributes}, valid_session
  #       expect(response).to redirect_to(comments)
  #     end
  #   end

  #   describe "with invalid params" do
  #     it "assigns the comment as @comment" do
  #       comment = FactoryGirl.create(:comment)
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Comment.any_instance.stub(:save).and_return(false)
  #       put :update, {:id => comment.to_param, :comment => { "author" => "invalid value" }}, valid_session
  #       expect(assigns(:comment)).to eq(comment)
  #     end

  #     it "re-renders the 'edit' template" do
  #       comment = FactoryGirl.create(:comment)
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Comment.any_instance.stub(:save).and_return(false)
  #       put :update, {:id => comment.to_param, :comment => { "author" => "invalid value" }}, valid_session
  #       expect(response).to render_template("edit")
  #     end
  #   end
  # end
end
