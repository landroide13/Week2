


class List
  def initialize(filename = "todo.md")
    @filename = filename
    @lines = File.read(@filename).split("\n")
  end
end