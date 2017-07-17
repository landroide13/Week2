
require_relative 'item'
require 'terminal-table'

class List
  attr_accessor  :name , :items

  def initialize(name , items = [])
    @name = name
    @items = items
  end

  def add(new_item)
    @items << new_item
  end

  def complete_at!(index)
    @items[index].done = true
    end

  def display
    puts "Display the list : #{name}"
    @items.each do |item|
      if item.done?
        puts " -[x] #{item.name} "
      else
        puts " -[ ] #{item.name} "
      end
    end
 end 

 def display_done
    puts "Display Done ones :"
    @items.each do |item|
      if item.done?
        puts "[x] #{item.name}"
        end
      end
   end
    
 def display_undone   
    puts "The unDone ones :" 
    @items.each do |item|
      if item.done?
        puts "[ ] #{item.name}"
        end
      end
   end


  def display_as_table
    @items.each do |item|
      if item.done?
        rows = []
        rows << [[x], "#{item.name}"]
        else
        rows << [[ ], "#{item.name}"]
      end
      table = Terminal::Table.new(rows: rows)
      puts table
  end
  end  

end










