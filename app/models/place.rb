class Place < ApplicationRecord
  belongs_to :city
  has_many :schedules

  def cities_select_options
    City.all.map { |c| [c.name, c.id] }
  end
end
