class Event < ApplicationRecord
  belongs_to :sport
  has_one :outcome
end
