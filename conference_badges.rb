def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    array.map {|name| badge_maker(name)}
end

def assign_rooms(array)
    assignments = []
    array.each_with_index do |name, index|
        assignments << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    end
    assignments
end

def printer(array)
    batch_badge_creator(array).each do |badge|
        puts badge
    end
    assign_rooms(array).each do |assignment|
        puts assignment
    end
end