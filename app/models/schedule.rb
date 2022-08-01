class Schedule < ApplicationRecord
  belongs_to :place
  belongs_to :user

  def states_select_options
    State.all.map { |c| [c.name, c.id] }
  end

  def places_select_options
    Place.all.map { |p| [p.name, p.id] }
  end

  def cities_select_options
    City.all.map { |c| [c.name, c.id] }
  end
end
