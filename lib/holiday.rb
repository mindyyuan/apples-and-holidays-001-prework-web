require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)


  holiday_hash[:winter].each {|holiday, items| items << supply}
  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter = holiday_hash.reject {|season, everything_else| season != :winter}
      winter_holiday_array = winter.values #array of hashes
      final = winter_holiday_array.collect {|hash| hash.values}
      final.flatten
      #winter_holiday_hash.collect {|holiday, supplies| supplies}
end

def all_supplies_in_holidays(holiday_hash)
holiday_hash.each {|season, everything_else| 
  puts "#{season.capitalize}:" 
  everything_else.each{|holiday, supplies| 
    holiday_array = holiday.to_s.split("_")
    holiday_array.collect {|word| word.capitalize!}
    holiday = holiday_array.join(" ")
    puts "  #{holiday}: #{supplies.join(", ")}"
  }
}
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_holiday_array = holiday_hash.reject {|season, everything_else|
    season == :winter || season == :fall}.collect {|season, everything_else| 
    everything_else.keys
    }
  new_holiday_array.flatten
end







