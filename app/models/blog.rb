class Blog < ApplicationRecord
  # Associations
    belongs_to :user
    has_many :comments
    has_many :commenters, through: :comments, class_name: "User", source: "user"

  # Validations
    validates_presence_of :title, :content
    validates :likes, numericality: { greater_than_or_equal_to: 0 }
    validates :dislikes, numericality: { greater_than_or_equal_to: 0 }

  # Scope Methods
    def uniq_commenters
      self.commenters.uniq
    end

end
