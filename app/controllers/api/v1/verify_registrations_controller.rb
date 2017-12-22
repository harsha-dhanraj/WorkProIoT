class Api::V1::VerifyRegistrationsController < ApplicationController
	# before_filter :restrict_access
  	skip_before_filter :verify_authenticity_token


  	def vehicle_validity
  		puts "Lattitude => #{params['lattitude']}"
  		puts "Longitude => #{params['longitude']}"
  		puts "Access Token => #{params['access_token']}"

  		lat = params['lattitude']
  		long = params['longitude']
  		access_token = params['access_token']
  		begin
  			# @vehicle = Vehicle.find_by_access_token(access_token)
  			@vehicle = Vehicle.find_by(:access_token => access_token)
  			puts "vehicle found #{@vehicle.inspect}"

			geo_localization = "[#{lat},#{long}]"
			address=Geocoder.address(geo_localization)
  			@vehicle.locations.create(:lattitude => lat, :longitude => long, :address => address)
  			s = true
  			m = "Success"
  		rescue Exception => invalid
  			puts "***************************************************"
  			s = false
  			m = "Error"
  			# render :json => {exception_message: invalid.message, exception_occured: "Y"}, status: 400
  		end	
  		res = {
	      :status=>s,
	      :msg => m
	    }

	    respond_to do |format|
	      format.json { render :json => res}
	    end
  	end


  	# private

  	# def restrict_access            
  		# begin
  		# 	@vehicle = Vehicle.find_by_access_token(request.headers['HTTP_ACCESS_TOKEN'])
  		# rescue Exception => Invalid
  		# 	render :json => {exception_message: invalid.message, exception_occured: "Y"}, status: 400
  		# end
  # 		if Vehicle.exists?(:access_token => request.headers['HTTP_ACCESS_TOKEN'])	
	 # 	    @vehicle = Vehicle.find_by_access_token(request.headers['HTTP_ACCESS_TOKEN'])
		# else
		#     puts "Error: Company not found"
		#     head :unauthorized
		# end	  
	  # end
end
