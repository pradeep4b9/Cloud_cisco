#encoding: utf-8
require 'carrierwave/processing/mime_types'
class ImageUploader < CarrierWave::Uploader::Base

  include ::CarrierWave::Backgrounder::Delay
  #Include the Sprockets helpers for Rails 3.1+ asset pipeline compatibility:
  # include Sprockets::Helpers::RailsHelper
  # include Sprockets::Helpers::IsolatedHelper
  include CarrierWave::MimeTypes

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  after :store, :encrypt_file
  before :store, :remember_cache_id
  after :store, :delete_tmp_dir

  #store! nil's the cache_id after it finishes so we need to remember it for deletion
  def remember_cache_id(new_file)
    @cache_id_was = cache_id
  end

  def delete_tmp_dir(new_file)
    # make sure we don't delete other things accidentally by checking the name pattern
    if @cache_id_was.present? && @cache_id_was =~ /\A[\d]{8}\-[\d]{4}\-[\d]+\-[\d]{4}\z/
      FileUtils.rm_rf(File.join(root, cache_dir, @cache_id_was))
    end
  end
 
  def encrypt_file(file)
    #Carrierwave::EncrypterDecrypter::Uploader.encrypt(self)
  end


  # def fog_public
  #   false
  # end

  def fog_authenticated_url_expiration
    15.minutes # in seconds from now,  (default is 10.minutes)
  end
  

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  # def store_dir
  #   "development_uploads/#{model.class.to_s.underscore}/logo_#{model.id}"
  # end

  def store_dir
    "images/#{model.class.to_s.underscore}/logo_#{model.id}"
  end

  # PDF version for the doc files
  # version :pdf, :if => :supported_file? do
  #   process :uno_convert  =>[:pdf]
  #   def full_filename(for_file)
  #     puts "Calling full_filename method"
  #     # puts "Fullfile name :--- #{File.basename(for_file, File.extname(for_file))}.pdf"
  #     "#{File.basename(for_file, File.extname(for_file))}.pdf"
  #   end
  # end


  # protected
  #   def supported_file?(new_file)
  #     files = [".odt",".odg", ".sxw", ".rtf", ".doc", ".docx",".wpd", ".txt", ".sdc",".ots",".ott", ".sdw",".sxw",
  #       ".ods", ".sxc", ".xls", ".xlsx", ".csv", ".tsv", ".odp", ".sxi", ".ppt", ".pptx", ".xlt", ".vor"]
  #     result = files.include?(File.extname(current_path).downcase) ? (true && file.size < 10485760 ) : false
  #     return result
  #   end

  #   def uno_convert format
  #     begin
  #       directory = File.dirname( current_path )
  #       tmpfile = File.join( directory, "tmpfile" )
  #       File.rename( current_path, tmpfile )
  #       # raise CarrierWave::ProcessingError, "UNOconv failed." unless system "unoconv -f #{format} '#{tmpfile}'"
  #       system "unoconv -f #{format} '#{tmpfile}'"
  #       puts "Converting file to PDF..."
  #       sleep(5)
  #       File.rename( File.join(directory, "tmpfile.#{format}"), current_path )
  #       File.delete( tmpfile )
  #     rescue Exception => e
  #       puts e  
  #     end
  #   end

end