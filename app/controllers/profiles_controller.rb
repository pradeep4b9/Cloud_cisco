class ProfilesController < ApplicationController

	def index
    @profile = Profile.last
    puts @profile.inspect
    puts "coming to profile"
    # puts @profile.inspect
  end

  def new
  	@profile = Profile.new
    puts "i am here"

  end	

  def create  
    puts "coming here"
    @profile = Profile.new(user_params)
    @profile.product_image = params[:profile]["product_image"]
    puts "SSSSSSSSSSSS"
    puts @profile.product_image.inspect
    puts "SSSSSSSSSSSS"
    if @profile.save!
      puts "profile is saving"
      puts @profile.inspect
      puts "hhhhhhhhhhhhh"
      flash[:notice] = "File uploaded"
      redirect_to profiles_path
    else
    end  
  end

   
  def edit
    @profile = Profile.where(:id=>params[:id]).last
    puts @profile.inspect
    puts "coming to update_profile"
  end

  def update
    @profile = current_user.profile.update(user_params)
    flash[:notice] = "Employee Details Updated Successfully"
    redirect_to profile_index_path
  end



  private

  def user_params
    params.require(:profile).permit(:product_image)
  end

  
end
 