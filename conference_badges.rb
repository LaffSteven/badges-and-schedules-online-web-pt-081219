def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.mapa do |attendee|
    badge_maker(attendee)
  end
end

def assign_rooms(attendees)
  room_assignment_list = []
  attendees.each do |attendee|
    assigned_room = attendees.index(attendee) + 1
    room_assignment_list << "Hello, #{attendee}! You'll be assigned to room #{assigned_room}!"
  end
  room_assignment_list
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end
  assign_rooms(attendees).each do |room|
    puts room
  end
end