class LocationsController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :authenticate_user!, :except => [:index]
  

  # GET /locations
  def index
    if user_signed_in?
      @locations= Location.where(user_id: current_user.id)
      @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
        marker.lat location.latitude
        marker.lng location.longitude
      end
    end
end

def path
  if user_signed_in?
     gon.locations = current_user.locations
   end
end

  # POST /locations
 def create
     respond_to do |format|
       if user_signed_in?
         @location = current_user.locations.new(location_params)
         if @location.save
           format.html {redirect_to action: "index", notice: 'Location was successfully created.'}
         else
           format.html {redirect_to action: "index", notice: 'Location was not created.'}
         end
       end
     end
   end


  def delete_all
    current_user.locations.destroy_all
  end

  

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:longitude, :latitude)
    end
end
