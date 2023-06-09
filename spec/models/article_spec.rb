# frozen_string_literal: true

require "rails_helper"

RSpec.describe Article do
  describe "#all" do
    let(:articles) do
      [
        "Ambipur air freshener plugin",
        "Epson Stylus Printer Cartridges",
        "Waterproof jacket with integrated hood",
        "Cat scratching hanger",
        "👶 Baby float seat",
        "Numbers puzzle still in wrapper ",
        "Body lotion set ",
        "Orchid ",
        "Christmas decorations ",
        "Childrens dvds ",
        "Lampshades & flowers ",
        "Kitchen items ",
        "Ladies commode chair solid wood ",
        "X4 tubs of playdoh & sensory light ",
        "Various items.",
        "Swimming goggles",
        "1 x Book with baby name, only puctured names available",
        "2 x lantern tea light holders - seconds ",
        "Bath toys",
        "Frozen Quorn Southern Fried bites & Tesco Jalopieno bites. ",
        "Sz 12 xmas dress",
        "Wallpaper ",
        "Lemons",
        "Age 2-4 Fluffy jumper",
        "Brown thins"
      ]
    end

    it "fetches from json to populate articles" do
      VCR.use_cassette("all_articles") do
        expect(described_class.all.map(&:title)).to eq(articles)
      end
    end
  end

  describe ".is_liked_by?" do
    subject(:article) { build(:article) }
    let(:current_user) { SecureRandom.uuid }

    it "retruns false if article is unlinked" do
      expect(article.is_liked_by?(current_user)).to be_falsey
    end

    it "retruns false if article is unlinked" do
      Like.create article_id: article.id, user_id: current_user
      expect(article.is_liked_by?(current_user)).to be_truthy
    end
  end
end
