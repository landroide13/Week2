require 'colorize'
require 'terminal-table'

puts "Im test"
puts "Im blue".colorize(:blue)
puts "Im green".colorize(:green)
puts "Im Grey".colorize(:grey)
puts "Im red".colorize(:red)

rows = []

rows << ["one".colorize(:green),"1".colorize(:green)]
rows << ["two",2]
rows << ["tree",3]
rows << ["four".colorize(:red),4]
rows << ["five",5]


table = Terminal::Table.new(rows: rows)
puts table

