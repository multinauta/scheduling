class State < ApplicationRecord
  belongs_to :country
  has_many :cities

  def countries_select_options
    Country.all.map { |c| [c.name, c.id] }
  end
end
