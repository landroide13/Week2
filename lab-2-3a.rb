require 'erb'


item = [{name: "Attend lectures", done: true},
  {name: "Do labs", done: true},
  {name: "Build stuff", done: false}
]

template = "<%  item.each do |item| %>
               <% if item[:done]  %> 
                [x] <%= item[:name] %>
             <% else %>
                [ ] <%= item[:name] %>
             <% end %>
            <% end %>"


puts ERB.new(template).result(binding)










