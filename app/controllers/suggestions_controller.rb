class SuggestionsController < ApplicationController

  def index
    @suggestions = Suggestion.send(category_from_params).order(created_at: :desc)
  end

  def new
    @suggestion = Suggestion.new(category: category_from_params)
  end

  def create
    @suggestion = Suggestion.new suggestion_params

    if @suggestion.save
      redirect_to suggestions_path(category: @suggestion.category), notice: "Thanks for contributing!"
    else
      render :new
    end
  end

  private
    def category_from_params
      return params[:category] if Suggestion.categories.keys.include?(params[:category])
      "other"
    end

    def suggestion_params
      params.require(:suggestion).permit(:author, :content, :category)
    end
end
