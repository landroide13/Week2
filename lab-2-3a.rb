require 'erb'


item = [{name: "Attend lectures", done: true},
  {name: "Do labs", done: true},
  {name: "Build stuff", done: false}]

template = <% if item[:done?] %>
           <% item[:name] %>

puts ERB.new(template).result(binding)










