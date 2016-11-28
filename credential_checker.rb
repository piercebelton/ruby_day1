def uname_pass_checker
  username = gets.chomp
  password = gets.chomp

  if username.length < 6 || password.length < 6
    puts "Invalid. Uname or pass too short."
  end

  if !(password.include? "!") && !(password.include? "$") && !(password.include? "\#")
    puts "Password is missing special chars"
  end

  if (password.downcase.include? "password")
    puts "Your password cannot contain the string \"password\" "
  end

   if (username.include? "!") || (username.include? "$") || (username.include? "\#") || (username.include? " ")
    puts "invalid username"
  end

  if password.count("0-9") < 1
    puts "your password must contain a number"
  end

  if password == password.downcase || password == password.upcase
    puts "password must contain one upper case and one lowercase letter."
  end

end
