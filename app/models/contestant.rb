class Contestant < ApplicationRecord
  belongs_to :bachelorette
  has_many :outings
  
  validates_presence_of :name
  validates_numericality_of :age
  validates_presence_of :hometown
end
