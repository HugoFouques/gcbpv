class SubbedWorkshop < ApplicationRecord
  belongs_to :workshop_slot
  belongs_to :subscription


  enum :option, "Confirmé" => 0, "Optionel" => 1
end
