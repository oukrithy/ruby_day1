# Write a function called valid_date that prompts the user for a date with a month, date, and year (all numerically expressed) and returns 'true' if this date exists and 'false' if it does not (for example: 7 28 2014 exists, but 22 34 1999 does not). Make sure to account for leap years. This program is easiest if you prompt for the month, date, and year separately.
def val_d d
  if d.to_i.between?(1, 31)
    true
  else
    false
  end
end

def val_m m
  if m.to_i.between?(1, 12)
    true
  else
    false
  end
end

def leap_yr d, m, y
  if ((y % 4) != 0)
    if d.to_i.between?(1, 29)
      true
    end
  elsif (y % 100) != 0
    if d.to_i.between?(1, 28)
      true
    end
  elsif (y % 400) != 0
    if d.to_i.between?(1, 29)
      true
    end
  elsif d.to_i.between?(1, 28)
      true
  else
    false
  end
end

def val_month d, m, y
  if ["4", "6", "9", "11"].include?(m)
    if d.to_i.between?(1, 30)
      true
    end
  elsif ["1", "3", "5", "7", "8", "10", "12"].include?(m)
    if d.to_i.between?(1, 31)
      true
    end
  else
    leap_yr d, m, y
   end
end

def check_date
  puts "Enter the day"
  day = gets.to_i
  puts "Enter the month 1 or 2 digits"
  month = gets.chomp
  puts "Enter the year"
  year = gets.to_i

  if val_d day and val_m month and val_month day, month, year
    puts "This is true"
    puts val_d day
    puts val_m month
    puts val_month day, month, year
  else
    puts "This is false"
    puts "This day"
    puts val_d day
    puts "This is month"
    puts val_m month
    puts "This is month and day"
    puts val_month day, month, year
  end
end

check_date
