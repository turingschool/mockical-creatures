require_relative "../lib/dwarf"
require "minitest/autorun"
require "minitest/spec"
require "mocha/mini_test"

describe "Dwarf-Mountain interactions using Minitest::Mock" do
  before do
    @dwarf = Dwarf.new
  end

  it "is excited when it finds gems" do
    mountain = Minitest::Mock.new
    mountain.expect(:mine, "gems")
    @dwarf.mine(mountain)
    assert_equal "happy", @dwarf.status
    mountain.verify
  end

  it "curses profusely when it finds coal" do
    mountain = Minitest::Mock.new
    mountain.expect(:mine, "coal")
    @dwarf.mine(mountain)
    assert_equal "grumpy", @dwarf.status
    mountain.verify
  end

  it "is confused when it finds something besides gems or coal" do
    mountain = Minitest::Mock.new
    mountain.expect(:mine, "fool's gold")
    @dwarf.mine(mountain)
    assert_equal "confused", @dwarf.status
    mountain.verify
  end
end

describe "Dwarf-Mountain interactions using Mocha" do
  before do
    @dwarf = Dwarf.new
    @mountain = stub("Mountain")
  end

  it "is excited when it finds gems" do
    @mountain.expects(:mine).returns("gems")
    @dwarf.mine(@mountain)
    assert_equal "happy", @dwarf.status
  end

  it "curses profusely when it finds coal" do
    @mountain.expects(:mine).returns("coal")
    @dwarf.mine(@mountain)
    assert_equal "grumpy", @dwarf.status
  end

  it "is confused when it finds something besides gems or coal" do
    @mountain.expects(:mine).returns("pizza")
    @dwarf.mine(@mountain)
    assert_equal "confused", @dwarf.status
  end
end
