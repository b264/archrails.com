module SuggestionsHelper

  def titleize(category)
    case category
    when "topic"
      "Topic"
    when "gag_gift"
      "Gag Gift"
    else
      "You Wanker"
    end
  end

  def suggest_titleize(category)
    display_text = ""
    display_text << "Suggest a " if ["topic", "gag_gift"].include?(category)
    display_text << titleize(category)
  end
end
