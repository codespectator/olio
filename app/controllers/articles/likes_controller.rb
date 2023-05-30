# frozen_string_literal: true

class Articles::LikesController < ApplicationController
  def update
    if (like = Like.find_by(article_id:, user_id: current_user)) != nil
      like.delete
    else
      Like.create article_id:, user_id: current_user
    end 
    redirect_to root_path
  end

  private

  def article_id
    params[:article_id]
  end
end
