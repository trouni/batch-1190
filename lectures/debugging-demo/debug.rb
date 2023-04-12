# require "pry-byebug"

def full_name(first_name, last_name)
    # binding.pry
    fname = first_name.capitalize
    lname = last_name.capitalize
    
    "#{fname} #{lname}"
end

puts full_name('matthew', 'miner')
