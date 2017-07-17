


class List
  def initialize(filename = "todo.md")
    @lines = File.read(filename).split("\n")
  end
end