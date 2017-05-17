

def first
  puts "Welcome to the calculator!\nPlease enter a number..."
  @first_number = gets.strip
  if @first_number =~ /[0-9]/
    @first_number = @first_number.to_f
    puts @first_number
    operator
  else
    puts "I am sorry, I do not support the #{@first_number} operator. Please input a number..."
    invalid_first_number
  end
end

def operator
  puts "Please select an operator..."
  @input = gets.strip
  if @input == "+" || @input == "-" || @input == "*" || @input== "/"
    second
  else
    puts "I am sorry, I do not support the #{@input} operator. Please input a valid operator..."
    invalid_operator
  end
end

def second
  puts "Please enter a second number..."
  @second_number = gets.strip
  if @second_number =~ /[0-9]/
    @second_number = @second_number.to_f
    puts @second_number
    solve
  else
    puts "I am sorry, I do not support the #{@second_number} operator. Please input a number..."
    invalid_second_number
  end
end

def answer_method
  @answer = 0
  if @input == "+"
    @answer = @first_number + @second_number
  elsif @input == "-"
    @answer = @first_number - @second_number
  elsif @input == "*"
    @answer = @first_number * @second_number
  elsif @input == "/"
    @answer = @first_number / @second_number
  end
end

def solve
  puts "Calculating....\nThe answer of #{@first_number} #{@input} #{@second_number} is..."
  answer_method
  puts @answer
  puts "1)To calculate again.\n2)Exit."
  after_answer
end

def after_answer
  input = gets.strip.to_i
  case input
  when 1
    first
  when 2
    exit
  end

end

def invalid_first_number
  @first_number = gets.strip
  if @first_number =~ /[0-9]/
    @first_number = @first_number.to_f
    puts @first_number
    operator
  else
    puts "I am sorry, I do not support the #{@first_number} operator. Please input a number..."
    invalid_first_number
  end
end

def invalid_operator
  @input = gets.strip
  if @input == "+" || @input == "-" || @input == "*" || @input== "/"
    puts @input
    second
  else
    puts "I am sorry, I do not support the #{@input} operator. Please input a valid operator..."
    invalid_operator
  end
end

def invalid_second_number
  @second_number = gets.strip
  if @second_number =~ /[0-9]/
    @second_number = @second_number.to_f
    puts @second_number
    solve
  else
    puts "I am sorry, I do not support the #{@second_number} operator. Please input a number..."
    invalid_second_number
  end
end

first
