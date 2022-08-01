class NotificationSpecialistSchedulingJob < ApplicationJob
  queue_as :default

  def perform(*args)
    place_id = args[0][:place_id]
    user_id = args[0][:user_id]
    datetime = args[0][:datetime]
    current_user_id = args[0][:current_user_id]
    place = Place.find(place_id)
    user = User.find(current_user_id)
    especialis_user = User.find(user_id)
    message = "Estimado #{user.email}, le recordamos que tiene una cita programada para el día #{datetime} en #{place.name} con #{especialis_user.email}."

    NotificationSpecialistSchedulingMailer.submission(message).deliver!
  end
end
