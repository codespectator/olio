# frozen_string_literal: true

class Article
  include ActiveModel::Model

  attr_accessor :id, :title

  def self.all
    connection = Faraday.new(ENV.fetch("ARTICLES_JSON_HOST"))
    response = connection.get(ENV.fetch("ARTICLES_JSON_PATH"))
    JSON.parse(response.body).map do |article|
      self.new id: article["id"], title: article["title"]
    end
  end

  def is_liked_by?(user)
    likes.where(user_id: user).count > 0
  end

  def likes
    Like.where(article_id: self.id)
  end
end
