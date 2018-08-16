require './lib/games'
require './lib/event'

require 'pry'

puts "enter year of your games"
year_response = gets.chomp
games = Games.new(year_response)

ages_response = []
puts "Please enter an event for your games. i.e. soccer"
name_response = gets.chomp.capitalize

events = Event.new(name_response, ages_response)

games.events << events

puts "Please enter the ages of your players for #{events.name} i.e. 19, 22, 33. Add up to five ages for your players"
ages_response << gets.chomp.to_i
#put in a if statement that determines correct response for ages

loop do

  puts "do you have an event to add to your event y/n?"
  yes_no = gets.chomp
  if yes_no == "y"

  ages_response = []
  puts "Please enter another event for your games. i.e. tennis"
  name_response = gets.chomp.capitalize
  events = Event.new(name_response, ages_response)
  games.events << events

  puts "Please enter the ages of your players for #{events.name} i.e. 10, 11, 33. Add up to five ages for your players"
  ages_response << gets.chomp.to_i

  elsif yes_no == "n"
    break
  else
    puts "please put y or n"
  end
end

puts games.summary
