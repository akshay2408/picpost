require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  let(:user) { create(:user) }
  let(:post) { create(:post, user: user) }

  before do
    sign_in user
  end

  describe 'GET #new' do
    it 'initializes a new comment' do
      get :new, params: { post_id: post.id }, xhr: true, format: :js
      expect(assigns(:comment)).to be_a_new(Comment)
    end
  end

  # describe 'POST #create' do
  #   context 'with valid parameters' do
  #     it 'creates a new comment' do
  #       params = {
  #         comment: { content: 'Test Content' }
  #       }

  #       expect {
  #         post :create, { content: 'Test Content' }, format: :js
  #       }.to change(Comment, :count).by(1)
        
  #       expect(response).to render_template(:create)
  #     end
  #   end

  #   context 'with invalid parameters' do
  #     it 'does not create a new comment' do
  #       params = {
  #         post_id: post.id,
  #         comment: { content: '', user_id: user.id, post_id: post.id }
  #       }

  #       expect {
  #         post :create, params: params, format: :js
  #       }.to_not change(Comment, :count)
        
  #       expect(response).to have_http_status(:unprocessable_entity)
  #       expect(response.content_type).to eq('application/json')
  #     end
  #   end
  # end

  # describe 'DELETE #destroy' do
  #   let(:comment) { create(:comment, post: post, user: user) }

  #   it 'destroys the comment' do
  #     delete :destroy, params: { post_id: post.id, id: comment.id }, format: :js
  #     expect(response).to render_template(:destroy)
  #   end
  # end
end
