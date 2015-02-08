require_relative "../lib/dwarf"
require "rspec"

describe "Dwarf-Mountain interactions using Rspec mocks" do
  context "#mine" do
    it "is excited when it finds gems" do
      expect(Dwarf).not_to be_nil
    end

    it "curses profusely when it finds coal" do
    end

    it "is confused when it finds something besides gems or coal" do
    end
  end
end
