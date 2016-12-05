# Guess the Number
# https://gist.github.com/epoch/c05113c6b3666711c773

@computerNumber = rand(0..10)
def guessTheNumber
  puts "Guess the Number!!"
  number = gets.chomp.to_i
  if number == @computerNumber
    puts "Congratulations!!"
  elsif number < @computerNumber
    puts "Higher..."
    guessTheNumber
  else
    puts "Lower..."
    guessTheNumber
  end
end

# guessTheNumber



# Days of the week
@days_of_the_week = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday"
]

def moveSunday
  puts "Original array \n" "#{@days_of_the_week}"
  sunday = @days_of_the_week.pop()
  @days_of_the_week.insert(0, sunday)
  puts "After move Sunday \n" "#{@days_of_the_week}"

  weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
  weekend_days = ["Saturday", "Sunday"]
  days_of_the_week2 = [weekdays, weekend_days]
  puts "Days of the Week \n" "#{days_of_the_week2.pop()}"
end

moveSunday


# Calculator

@operations = ["+", "-", "*", "/", "exponent", "square roots" "quit"]
numbers = []
 def calculate
   puts @operations
   puts "Chooose the operation..."
   operation = gets.chomp
   if operation != "quit"
     puts "Enter Number 1..."
     num1 = gets.chomp.to_i
     puts "Enter Number 2..."
     num2 = gets.chomp.to_i
     case operation
     when "+"
       puts "#{num1}" " + " "#{num2}" " = " "#{num1 + num2}"
       calculate
     when "-"
       puts "#{num1}" " - " "#{num2}" " = " "#{num1 - num2}"
       calculate
     when "*"
       puts "#{num1}" " * " "#{num2}" " = " "#{num1 * num2}"
       calculate
     when "/"
       if num2 != 0
         puts "#{num1}" " / " "#{num2}" " = " "#{num1 / num2}"
         calculate
       else
         puts "No division by 0"
         calculate
       end
     when "exponent"
       
     when "square roots"

     end
   end
 end

 # calculate
