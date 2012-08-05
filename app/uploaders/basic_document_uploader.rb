# encoding: utf-8

class BasicDocumentUploader < CarrierWave::Uploader::Base
  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def cache_dir
    cache_dir = File.join(Rails.root, 'tmp/uploads')
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
    "/images/fallback/" + [model.class.to_s.underscore, version_name, "blank.png"].compact.join('_')
  end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # resize_to_fit bounds the end image by the height and width given
  # Examples:
  # original 900x200 given 416x70 will create a 315x70 result
  # original 900x200 given 416x500 will create a 416x92 result
  #
  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #  %w(jpg jpeg gif png)
  # end

  #Override the filename of the uploaded files:
end
