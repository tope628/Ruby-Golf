# Hole 1: Fizz Buzz
# Given a number the function returns “Fizz” if it is a multiple of 3, “Buzz” if it is a multiple of 5
# and “FizzBuzz” if it is a multiple of 15. If the number is not a multiple of 3 or 5 then the number is returned as a string.
#
def fizzbuzz(n)
  if n % 3 == 0 && n % 5 != 0 && n % 15 != 0
     "Fizz"
  elsif n % 3 != 0 && n % 5 == 0 && n % 15 != 0
     "Buzz"
  elsif n % 3 == 0 && n % 5 == 0 && n % 15 == 0
    "FizzBuzz"
  else
     n.to_s
  end
end
puts fizzbuzz(3) == "Fizz"
puts  fizzbuzz(10) == "Buzz"
puts fizzbuzz(45) == "FizzBuzz"
puts  fizzbuzz(31) == "31"

# Hole 2: Caesar Cipher
def caeser(string,shift)
  array = ("a".."z").to_a
  encrypt = array.rotate(shift)
  alphabet_hash = {}
  array.each_with_index{|k,i| alphabet_hash[k] = i}
  encrypt_hash = {}
  encrypt.each_with_index{|k,i| encrypt_hash[k] = i}
  result = []
  string.each_char do |chr|
    result << encrypt_hash.key(alphabet_hash[chr])
  end
  result.join('')
end
puts caeser("hello",3) == "khoor"
puts caeser("tope",10) == "dyzo"
puts caeser("tope",-8) == "lghw"


# Hole 3: Rock,Paper,Scissors Game

# Write a simple method that ‘plays’ this game, where the player enters their ‘move’ as an argument to the method.
# If the player enters an invalid option then the result should be ‘lose’. The computer should choose its move at random.
# The output gives the computer’s ‘move’ and the result as a comma-separated string.



def play(move)
  computers_move = ["Rock", "Paper", "Scissors"]
  # debugger
  comp_move = computers_move.sample
  if  comp_move == move
    "#{comp_move},Draw"
  elsif comp_move == "Rock" && move == "Scissors"
      "#{comp_move},Lose"
    elsif comp_move == "Rock" && move == "Paper"
        "#{comp_move},Win"
      elsif  comp_move == "Scissors" && move == "Paper"
        "#{comp_move},Lose"

      elsif comp_move == "Scissors" && move == "Rock"
        "#{comp_move},Win"

      elsif comp_move == "Paper" && move == "Rock"
        "#{comp_move},Lose"

      elsif comp_move == "Paper" && move == "Scisssors"
        "#{comp_move},Win"

      else
        "#{comp_move},Lose"
      end

end
p play("Rock")
p  play("Paper")
p     play("Scissors")
p   play("Soap")


# Hole 4: String Counter
# Write a method that when given a string and substring, returns the number of times the substring occurs in that string (ignoring case).
def count(str,sub_str)
  str.scan(/#{sub_str}/i).count

end
p   count("Banana","a") == 3
p   count("RubySource provides advice, tutorials, commentary, and insight into the Ruby and Rails ecosystem","ruby") == 2
# Hole 5: Swingers Function
# Write a function that replaces ‘putting your keys in a tin’. The argument to the function is an array of arrays that contain two objects. The function returns a new array where the pairs of objects have been mixed up. An object should not end up with it’s original ‘partner’.

# DID NOT DO HOLE 5!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# Answer found on google
def swingers(p)m,f=p.transpose;m.zip f.rotate end

def swingers_long(p)
	guys, gals = [], []
	p.each do |e|
		guys << e[0]
		gals << e[1]
	end
	guys.zip gals.unshift(gals.pop)
end
C
