class NotificationSpecialistSchedulingMailer < ApplicationMailer
  default from: 'scheduling@alvaro-tapia.cl'

  def submission(message)
    @message = message
    mail(to: 'alvaro-tapia@hotmail.com', subject: 'Hora Agendada')
  end
end
