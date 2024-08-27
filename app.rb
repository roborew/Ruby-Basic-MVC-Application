# app.rb
require_relative 'MessagesController'

controller = MessagesController.new

puts "1. View Messages"
puts "2. Create a New Message"
puts "3. Update a Message"
puts "4. Exit"

loop do
  print "Choose an option: "
  option = gets.chomp.to_i

  case option
  when 1
    controller.index
  when 2
    print "Enter the message title: "
    title = gets.chomp
    controller.create(title)
  when 3
    print "Enter the ID of the message to update: "
    id = gets.chomp.to_i
    print "Enter the new title: "
    title = gets.chomp
    controller.update(id, title)
  when 4
    break
  else
    puts "Invalid option. Please choose again."
  end
end