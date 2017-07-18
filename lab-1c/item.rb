

class Item
  def initialize(name, done = false)
    @name = name
    @done = done
  end 
  
  # same code as from the previous lab:
  def self.new_from_line(line)
    Item.new(line[6..-1], line[3] == "x")
  end

  def done?
    @done
  end  

  def display_html
    "<li>#{@name}</li>"
  end


end

it1=Item.new("Learn Ruby").display_html #=> "<li>Learn Ruby</li>"
it2=Item.new("Learn Sinatra", true).display_html #=> "<li>Learn Sinatra</li>"

puts it1
puts it2

