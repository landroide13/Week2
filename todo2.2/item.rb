
class Item
  attr_accessor :name

  def initialize(name, done = false)
    @name = name
    @done = done
  end
  
  def done?
    @done
  end
  
  def mark_done!
    @done=true
  end
  
  def display
    @name
  end
  
  # input: - [x] Love Ruby
  def self.new_from_line(line)
    line[6..-1]
    done = line[3] == "x"
    Item.new(name, done)
  end
end
