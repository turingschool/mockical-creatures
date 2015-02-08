require_relative "../lib/dwarf"
require "rspec"

describe "Dwarf-Mountain interactions using Rspec mocks" do
  context "#mine" do
    before do
      @dwarf = Dwarf.new
    end

    it "is excited when it finds gems" do
      mountain = instance_double("Mountain", :mine => "gems")
      @dwarf.mine(mountain)
      expect(@dwarf.status).to eq("happy")
    end

    it "curses profusely when it finds coal" do
      mountain = instance_double("Mountain", :mine => "coal")
      @dwarf.mine(mountain)
      expect(@dwarf.status).to eq("grumpy")
    end

    it "is confused when it finds something besides gems or coal" do
      mountain = instance_double("Mountain", :mine => "malachite")
      @dwarf.mine(mountain)
      expect(@dwarf.status).to eq("confused")
    end
  end
end
