require 'sinatra'
require 'erb'


 get "/" do
  erb :"index.html" ,layout: :"layout.html"
 end


get "/about" do
   
  erb :"about.html" ,  layout: :"layout.html"
end


get "/trolo" do
   name = "Your name here"
  erb :"trolo.html" , locals:{name:name} , layout: :"layout.html"
end







