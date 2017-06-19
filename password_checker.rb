
def same usr, pwd
  usr == pwd
end

def long_enough pwd
  pwd.length < 6
end

def does_not_contain_special usr
  if usr[/[!#$]/]
    true
  else
    false
  end
end

def contains_special pwd
  if !pwd[/[!#$]/]
    true
  else
    false
  end
end

def contains_digit pwd
  if !pwd[/\d/]
    true
  else
    false
  end
end

def contains_upper pwd
  if !pwd[/[A-Z]/]
    true
  else
    false
  end
end

def contains_lower pwd
  if !pwd[/[a-z]/]
    true
  else
    false
  end
end


def check_all
  puts "Enter your User Name"
  usr =  gets.chomp

  puts "Enter your Password"
  pwd = gets.chomp
  if same pwd, usr
    puts "Your password should not be the same as user name"
  elsif long_enough pwd
    puts "Your password is not long enough"
  elsif does_not_contain_special usr
    puts "Your user contains a special character"
  elsif contains_special pwd
    puts "Your password does not have a special character"
  elsif contains_digit pwd
    puts "Your password does not have a number"
  elsif contains_upper pwd
    puts "Your password does not have a uppercase"
  elsif contains_lower pwd
    puts "Your password does not have a lowercase"
  else
    puts "Your Credentials are good"
  end
end

check_all
