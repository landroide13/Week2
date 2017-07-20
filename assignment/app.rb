require 'sinatra'
require 'erb'


 get "/" do
  erb :"index.html" ,layout: :"layout.html"
 end


get "/about" do
  erb :"about.html" ,  layout: :"layout.html"
end


get "/trolo" do
   my_items = [
    {name: "Learn Strings", done: false},
    {name: "Learn Hash", done: true},
    {name: "Learn Variables", done: true},
    {name: "Learn Methods", done: true},
    {name: "Learn ERB", done: true},
    {name: "Learn Partials", done: true},
  ]
  erb :"trolo.html", layout: :"layout.html", locals: {items: my_items}
end