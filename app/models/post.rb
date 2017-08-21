class Post < ApplicationRecord
  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags
  before_create :create_slug

  def create_slug
    self.slug = slugify(self.title)
  end

  def slugify(title)
    title.downcase.gsub(' ', '-')
  end
end
