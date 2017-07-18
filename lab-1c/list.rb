


class List
  attr_accessor :lines

  def initialize(filename = "todo.md")
    @filename = filename
    @lines = File.read(@filename).split("\n")
  end

  def display_html
    html = "<ul>"
    @lines.each do |line|
      html << "<li>"+line +"</li>"
      html << Item.new_from_line(line).display_html
      end
      html << "</ul>"
    end
end









