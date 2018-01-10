require 'unirest'

controllers = ["capstones", "students", "eduations", "experiences", "skills"]

set_of_methods = ["index", "create", "read", "update", "delete"]

id = nil

url = "http://localhost:3000/v1/"

number = 1
puts "select controller:"
controllers.each do |x| 
  puts "#{number} #{x}"
  number += 1
end

chosen_controller = gets.chomp.to_i - 1

number = 1
puts "select method:"
set_of_methods.each do |x| 
  puts "#{number} #{x}"
  number += 1
end

chosen_method = gets.chomp.to_i

if chosen_method >= 3
  puts "give me an id"
  chosen_id = gets.chomp.to_i
end

if chosen_method == 1
  response.Unirest.get(url + controllers[chosen_controller])
  puts response.body
end