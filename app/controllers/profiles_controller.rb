class ProfilesController < ApplicationController

	def index
    @profile = Profile.last
    puts @profile.inspect
    puts "coming to profile"
  end

  def new
  	@profile = Profile.new
  end	

  def create  
    puts "coming here"
    @profile = Profile.new(user_params)
    @profile.product_image = params[:profile]["product_image"]
    puts @profile.product_image.inspect
    if @profile.save!
      puts @profile.inspect
      flash[:notice] = "File uploaded"
      redirect_to profiles_path
    else
    end  
  end


  private

  def user_params
    params.require(:profile).permit(:product_image)
  end

  
end
 