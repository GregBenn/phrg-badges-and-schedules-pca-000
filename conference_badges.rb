require 'pry'
# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.collect {|name| badge_maker(name)}
end

def assign_rooms(attendees)
  room_assignments = []
  attendees.each_with_index do |val,index|
    room_assignments << "Hello, #{val}! You'll be assigned to room #{index+1}!"
    end
  room_assignments
end

def printer(attendees)
  # puts "#{batch_badge_creator(attendees)}"

  batch_badge_creator(attendees).each{|badge| puts badge}
  assign_rooms(attendees).each{|room| puts room}
  # # attendees.each_with_index
  # binding.pry
end
