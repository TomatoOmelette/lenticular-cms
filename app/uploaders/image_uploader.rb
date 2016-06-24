# encoding: utf-8
class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :file
  # storage :fog
  include CarrierWave::MimeTypes
  process :set_content_type

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :pin do
    process :resize_to_limit => [370, nil]
  end

  version :featured_image do
    process :resize_to_limit => [750, nil]
  end

  version :post_thumb do
    process :resize_to_fill => [365, 205]
  end

  version :md do
    process :resize_to_limit => [888, nil]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
