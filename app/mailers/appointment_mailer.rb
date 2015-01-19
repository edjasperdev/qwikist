class AppointmentMailer < ActionMailer::Base

	def pending_appointment(appointment)
		@provider = appointment.provider
		@member = appointment.member
		mail(to: "#{@provider.email}",
         from: "DO_NOT_REPLY@qwikist.com",
         subject:"#{@member.name} of Qwikist.com wants to book a session with you"
         )
	end

end
