module SuggestionsHelper

  def titleize(category)
    case category
    when "topic"
      "Suggest a Topic"
    when "gag_gift"
      "Suggest a Gag Gift"
    else
      "You Wanker"
    end
  end
end
