require 'rails_helper'

RSpec.describe "Articles::Likes", type: :request do
  describe "GET /update" do
    let(:article) { build :article }
  
    it "creates the like if current_user hasn't liked before" do
      expect { get(article_like_path(article_id: article.id)) }.to change(Like, :count).from(0).to(1)
    end

    it "deletes the like if current_user has liked before" do
      user_id = SecureRandom.uuid
      allow(SecureRandom).to receive(:uuid).and_return(user_id)

      Like.create user_id: user_id, article_id: article.id
      expect { get(article_like_path(article_id: article.id)) }.to change(Like, :count).from(1).to(0)
    end
  end
end
