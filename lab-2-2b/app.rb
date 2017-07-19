require 'sinatra'
require 'erb'


get "/" do
  erb :index
end


get "/about" do
  name = "Your name here"
  erb :"about.html", locals: {name: name}
end










