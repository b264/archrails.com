class Suggestion < ApplicationRecord
  enum category: [:other, :gag_gift, :topic]
  validates_presence_of :category
  validates :content, presence: { required: true, message: "Missing. Yo, you gotta type something." }
end
