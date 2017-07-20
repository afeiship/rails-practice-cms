class Tuwen < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates_processing_of :image
  validate :image_size_validation

  include RailsTaggable::Taggable
  def self.tagged_with(name)
      RailsTaggable::Tag.find_by!(name: name).tuwens
  end

  private
  def image_size_validation
      errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end
end
