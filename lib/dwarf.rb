class Dwarf
  attr_accessor :status

  def mine(mountain)
    stone = mountain.mine
    if stone == "gems"
      puts "Great Glorious Geodes! Got us a gem."
      self.status = "happy"
    elsif stone == "coal"
      puts "!#*@&% ... more coal."
      self.status = "grumpy"
    else
      puts "Confound it all, I don't recognize this stone: #{stone}"
      self.status = "confused"
    end
  end
end
