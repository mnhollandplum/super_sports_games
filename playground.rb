require './lib/games'
require './lib/event'

require 'pry'

puts "enter year of your games"
year_response = gets.chomp
games = Games.new(year_response)

ages_response = []
puts "Please enter an event for your games. i.e. Soccer"
name_response = gets.chomp.capitalize

events = Event.new(name_response, ages_response)

games.events << events

puts "Please enter the ages of your players for #{events.name} one at a time. When you are finished, type done."
ages = gets.chomp

while ages != "done"
ages_response << ages.to_i
ages = gets.chomp
end
#put in a if statement that determines correct response for ages

loop do

  puts "do you have an event to add to your event y/n?"
  yes_no = gets.chomp
  if yes_no == "y"

  ages_response = []

  potential_events = ["Bowling", "Curling", "Football", "Swimming"]

  puts "Please enter another event for your games. i.e. #{potential_events.sample}"
  name_response = gets.chomp.capitalize
  events = Event.new(name_response, ages_response)
  games.events << events



  puts "Please enter the ages of your players for #{events.name} one at a time. When you are finished, type done."
  ages = gets.chomp

  while ages != "done"
  ages_response << ages.to_i
  ages = gets.chomp
  end

  elsif yes_no == "n"
    break
  else
    puts "please put y or n"
  end
end

puts games.summary
