class SuggestionsController < ApplicationController

  def index
    @suggestions = Suggestion.send(category)
  end

  def new
    @suggestion = Suggestion.new(category: category)
  end

  def create
    @suggestion = Suggestion.new suggestion_params

    if @suggestion.save
      redirect_to suggestions_path, notice: "Thanks! Your idea will be considered"
    else
      render :new
    end
  end

  private
    def category
      return params[:category] if Suggestion.categories.keys.include?(params[:category])
      "other"
    end

    def suggestion_params
      params.require(:suggestion).permit(:name, :content, :category)
    end
end
