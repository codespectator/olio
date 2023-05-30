require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ArticlesHelper. For example:
#
# describe ArticlesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ArticlesHelper do
  describe ".like_link_to" do
    let(:current_user) { SecureRandom.uuid }
    let(:article) { build(:article) }

    it "returns a like link if not yet liked" do
      expect(helper.like_link_to(current_user, article)).to eq("<a class=\"text-blue-600 underline\" href=\"/articles/1/like\">Like</a>")
    end

    it "returns an unlike link if liked" do
      Like.create article_id: article.id, user_id: current_user
      expect(helper.like_link_to(current_user, article)).to eq("<a class=\"text-blue-600 underline\" href=\"/articles/1/like\">Unlike</a>")
    end
  end
end
