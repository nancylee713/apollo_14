require 'rails_helper'

describe AstronautMission, type: :model do
  describe "relationships" do
    it { should belong_to :astronaut }
    it { should belong_to :mission }
  end
end
