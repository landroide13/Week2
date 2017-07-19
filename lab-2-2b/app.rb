require 'sinatra'
require 'erb'


 get "/" do
  erb :"index.html" ,layout: :"layout.html"
 end


get "/about" do
   
  erb :"about.html" ,  layout: :"layout.html"
end


get "/trello" do
   name = "Your name here"
  erb :"trello.html" , locals:{name:name} , layout: :"layout.html"
end







