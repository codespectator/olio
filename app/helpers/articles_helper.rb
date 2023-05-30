# frozen_string_literal: true

module ArticlesHelper
  def like_link_to(current_user, article)
    label = article.is_liked_by?(current_user) ? "Unlike" : "Like"
    link_to(label, article_like_path(article_id: article.id), class: "text-blue-600 underline")
  end
end
