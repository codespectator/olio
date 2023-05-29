# frozen_string_literal: true

class Article
  include ActiveModel::Model

  attr_accessor :id, :title

  def self.all
    connection = Faraday.new(ENV.fetch("ARTICLES_JSON_HOST"))
    response = connection.get(ENV.fetch("ARTICLES_JSON_PATH"))
    JSON.parse(response.body).map do |article|
      self.new title: article["title"]
    end
  end
end
