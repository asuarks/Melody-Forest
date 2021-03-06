class AudioFileUploader < CarrierWave::Uploader::Base
  # 追記
  # storage :file
  # ↓AWS S3用に変更
  storage :fog
  include CarrierWave::Audio


  # 本番のみ S3使う場合は以下
  # if Rails.env.development?
  #   storage :file
  # elsif Rails.env.test?
  #   storage :file
  # else
  #   storage :fog
  # end


  # 追記
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  # version :mp3 do
  #   process :convert => [{output_format: :mp3}]

  #   def full_filename(for_file)
  #     "#{super.chomp(File.extname(super))}.mp3"
  #   end
  # end
 end


  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:

  ## storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:

  ## def store_dir
  ##   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  ## end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url(*args)
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_whitelist
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end