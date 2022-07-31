class SubPlace < ApplicationRecord
  belongs_to :place

  def places_select_options
    Place.all.map { |p| [p.name, p.id] }
  end
end
