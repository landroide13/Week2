
require_relative 'list'
require 'sinatra'
#require "bundler/setup"
#Bundler.require # this line will require all the gems in Gemfile

get "/lines" do
  @list = List.new("todo.md")
  @list.each 
end

