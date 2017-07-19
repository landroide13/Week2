require 'sinatra'
require 'erb'


get "/" do
  name="Hello"
  erb :"index.html" locals:{name:name}
end


get "/about" do
   name = "Your name here"
  erb :"about.html" , locals:{name:name}
end










