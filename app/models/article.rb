class Article < ApplicationRecord
  include RailsTaggable::Taggable
  def self.tagged_with(name)
      RailsTaggable::Tag.find_by!(name: name).articles
  end
end
