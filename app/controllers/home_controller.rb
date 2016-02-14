class HomeController < ApplicationController
  def home
    @topics = Suggestion.topic.order(created_at: :desc).first(3)
    @gag_gifts = Suggestion.gag_gift.order(created_at: :desc).first(3)
  end
end
