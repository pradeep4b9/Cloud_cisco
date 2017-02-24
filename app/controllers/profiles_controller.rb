class ProfilesController < ApplicationController

	def index
    # @profile = Profile.last
  end

  def new
  	@profile = Profile.new
  end	

  def create  
    @profile = Profile.new(user_params)
    if @profile.save
      flash[:notice] = "File uploaded"
      redirect_to profiles_path
    else
    end  

  end


  private

  def user_params
    params.require(:profile).permit(:product_image )
  end

  
end
 