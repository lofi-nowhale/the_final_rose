require "rails_helper"

RSpec.describe Contestant, type: :model do
  describe "validations" do 
    it { validate_presence_of :name}
    it { validate_numericality_of :age}
    it { validate_presence_of :hometown}
  end
  describe "relationships" do
    it { should belong_to :bachelorette }
    it { should have_many :outings}
  end
end
