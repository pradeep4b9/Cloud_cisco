class Profile
	
  include Mongoid::Document
  include Mongoid::Timestamps
  

  field :product_image, type: String
  field :product_image_tmp, type: String
  field :iv, type: Moped::BSON::Binary 
  field :key, type: Moped::BSON::Binary

  
  mount_uploader :product_image,ImageUploader
  store_in_background :product_image
  
  #after_save :update_format
 
  
 #  after_save do |img|
	# 	image = Magick::Image.read(self.product_image.current_path).first
	# 	puts image.format

	# 	image.write('image.SVG')

	# 	image = Image.read('image.svg').first
	# 	puts image.format
	# end

 #  def update_format
	#   img, data = Magick::Image.from_blob(str) {
	#     self.format = 'PNG'
	#     self.background_color = 'transparent'
	#   }
	#   img.to_blob {
	#     self.format = 'SVG'
	#   }
	# end

end
