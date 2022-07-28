class City < ApplicationRecord
  belongs_to :state


  def states_select_options
    State.all.map { |s| [s.name, s.id] }
  end

end
