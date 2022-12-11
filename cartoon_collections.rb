def roll_call_dwarves dwarves
  dwarves.each_with_index do |dwarf, index|
    puts "#{index + 1}. #{dwarf}"
  end
end

def summon_captain_planet planateers
  planateers.map do |item|
    "#{item.capitalize}!"
  end
end

def long_planeteer_calls calls
  calls.any? do |call|
    call.length > 4
  end
end

# my method: (it works)

# def find_the_cheese snacks
#   # the array below is here to help
#   cheese_types = ["cheddar", "gouda", "camembert"]
#   found_cheese = nil
#   snacks.each do |snack|
#     cheese_types.each do |cheese|
#       if cheese == snack
#         found_cheese = snack
#       end
#     end
#   end
#   found_cheese
# end

# suggested method

def find_the_cheese(snacks)
  cheese_types = ["cheddar", "gouda", "camembert"]
  snacks.find do |maybe_cheese|
    cheese_types.include?(maybe_cheese)
  end
end
