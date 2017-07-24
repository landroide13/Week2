
require 'sinatra'
require 'shotgun'


 get "/" do
  lines = File.read("todo.md").split("\n")

  items = lines.map.with_index do |line , index|
    {
     name: line[5..-1],
     status: (line[3] == "x") ? "done" : "undone",
     index: index
    }
  end 

post '/add' do
  new_item = {name: params["name"], status: params["done"]}
  
  File.open("todo.md", "a") do |f|
    f << "\n"
    f << "- [ ]" + new_item[:name]
  end
  puts params
  redirect to("/")
end

def save
  items = params["items"]
  File.open("todo.md","w") do |f|
      items.each do |item|
        if item[:status] == "done"
          f << "- [x]" + item[:name].strip + "\n"
        else
          f << "- [ ]" + item[:name].strip + "\n"   
        end
     end
  end
  #redirect to("/")  
end

#................................................

post '/update' do
  puts "params :#{params}"
  items = params["items"]
  
  if params["btn"]
    index = params["btn"].to_i
    if items[index][:status] == "done"
       items[index][:status] = "undone"
    else
      items[index][:status] = "done"  
    end
  end

  File.open("todo.md","w") do |f|
      items.each do |item|
        if item[:status] == "done"
          f << "- [x]" + item[:name]+"\n"
        else
          f << "- [ ]" + item[:name]+"\n"   
        end
     end
      #items.save  
  end
  redirect to("/")
end 


 








