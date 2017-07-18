
require_relative 'list'
require 'sinatra'
#require "bundler/setup"
#Bundler.require # this line will require all the gems in Gemfile

get "/lines" do
  "<h1 style='color:red'>Hello Sinatra</h1>"
  @list = List.new("todo.md")
  @list.display_html
  
end

