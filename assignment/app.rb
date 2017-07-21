require "bundler/setup"
Bundler.require


 get "/" do
  lines = File.read("todo.md").split("\n")

  items = lines.map do |line|
    status = line[3] == "x" ? "done" : "undone"
    name = line[5..-1]

    {name: name, status: status}
  end
  erb :"trolo.html" , locals:{items:items}
end


post '/add' do
  new_item = {name: params["task"], status: params["done"]}
  
  File.open("todo.md","a") do |f|
    if new_item[:status]
    f << "\n"
    f << "- [x]"+new_item[:name]
    else
    f << "\n"
    f << "- [ ]"+new_item[:name]
    end
    redirect to("/")
  end
end