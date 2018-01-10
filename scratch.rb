require 'unirest'

controllers = ["capstones", "students", "eduations", "experiences", "skills"]

set_of_methods = ["index", "create", "read", "update", "delete"]

id = nil

url = "http://localhost:3000/v1/"

random = ["Paul", "Cheryl", "Ben", "Jae"]

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

if chosen_method == 1 #index
  response = Unirest.get(url + controllers[chosen_controller])
  p response.body 

elsif chosen_method == 2 #create TODO
  params = {}
  params[:first_name] = random.sample
  params[:name] = random.sample
  params[:degree] = random.sample
  params[:job_title] = random.sample
  params[:skill_name] = random.sample
  params[:student_id] = 1
  response = Unirest.post(url + controllers[chosen_controller])
  p response.body 

elsif chosen_method == 3 #read 
  response = Unirest.get(url + controllers[chosen_controller] + "/#{chosen_id}")
  p response.body  

elsif chosen_method == 4 #update TODO
  params = {}
  params[:first_name] = random.sample
  params[:name] = random.sample
  params[:degree] = random.sample
  params[:job_title] = random.sample
  params[:skill_name] = random.sample
  response = Unirest.patch(url + controllers[chosen_controller] + "/#{chosen_id}")
  p response.body

elsif chosen_method == 5 #destroy
  response = Unirest.delete(url + controllers[chosen_controller] + "/#{chosen_id}")
  p response.body
end

