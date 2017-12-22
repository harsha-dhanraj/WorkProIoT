class NotifyMailer < ApplicationMailer

	default from: "'Vehicle Notification' <harshu.rtk03@gmail.com>"

	def notify_location(vehicle)
		@location = vehicle.locations.last.address rescue "Unknown place"
		@owner = vehicle.owner
		mail(to: vehicle.email, subject: "Vehicle Location")
	end

end
