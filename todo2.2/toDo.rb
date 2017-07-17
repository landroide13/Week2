require 'json'
require_relative 'list'
require_relative 'item'

class Todo
  attr_accessor :line , :list

    def initialize(file_name = "todo.md")
      @file_name = file_name
      @my_list = List.new("Today")
    end
    
    def list
      @my_list 
    end 

    def load
       @line = File.read("todo.md").split("\n")
       @line.each do |line|
          @my_list.add(Item.new(line[6..-1],line[3] == "x"))
        end
     end

    def add(new_item)
      @my_list.add(Item.new(new_item))
    end

    def show_all
      @my_list.display
    end  

    def show_done
      @my_list.display_done
    end

    def show_undone 
      @my_list.display_undone
    end

    def save_jo
      my_file = {item:@item ,list:@list}.to_json
      open('my_file.json','a') do |file|
        file.puts my_file
      end
    end

    def prompt


      puts "Welcome to the To-Do app... "
      puts "For show all the list type a) "
      puts "For show all the Done items type b) "
      puts "For show all the UnDone type c) "
      puts "For add a new item type d) "
      puts "For past to Json file type e) "
      puts "For exit type f) "

      answer=gets.chomp

      if answer == "a"
        @todo = Todo.new
        @todo.load
        @todo.show_all
        @todo.prompt
      elsif answer == "b"
        @todo = Todo.new
        @todo.load
        @todo.show_done
        @todo.prompt
      elsif answer == "c"
        @todo = Todo.new
        @todo.load
        @todo.show_undone
        @todo.prompt
      elsif answer == "d"
        puts "Enter the new item "
        new_it=gets.chomp
        @todo = Todo.new
        @todo.add(new_it)
        @todo.load
        @todo.show_all
        puts "You wanna pass it to json file (y / n) ?"
        answer = gets.chomp
        if answer == "y"
          @todo.save_jo
          @todo.prompt
          else
          @todo.prompt
        end
      elsif answer == "e"
        @todo = Todo.new
        @todo.save_jo 
        @todo.prompt    
      elsif answer == "f"
        puts "Good bye"
      end
    
    end

end



@todo = Todo.new
@todo.load

@todo.show_all
@todo.prompt




