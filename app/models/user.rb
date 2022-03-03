class User < ApplicationRecord
  # Associations
    has_many :blogs
    has_many :comments
    has_many :commented_blogs, through: :comments, class_name: "Blog", source: "blog"

  # Validations
    validates_presence_of :email, :first_name, :last_name
    validates_uniqueness_of :email

    has_secure_password # macro method

  # Scope Methods
    def uniq_commented_blogs
      self.commented_blogs.uniq
    end

end
