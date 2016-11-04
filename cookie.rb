require 'sinatra'

cookie_count = 0
cookie_result = NIL

puts "What does your Friday night look like?"
	user_input = gets.chomp
	if user_input == "0"
		cookie_count +=0
	elsif user_input == "1"
		cookie_count +=1
	elsif user_input == "2"
	   	cookie_count +=2
	elsif user_input == "3"
	   	cookie_count +=3
end

puts "What is your ideal pet?"
	user_input = gets.chomp
	if user_input == "0"
		cookie_count +=0
	elsif user_input == "1"
		cookie_count +=1
	elsif user_input == "2"
	   	cookie_count +=2
	elsif user_input == "3"
	   	cookie_count +=3
end

puts "Where is your next vacation?"
	user_input = gets.chomp
	if user_input == "0"
		cookie_count +=0
	elsif user_input == "1"
		cookie_count +=1
	elsif user_input == "2"
	   	cookie_count +=2
	elsif user_input == "3"
	   	cookie_count +=3
end

puts "What is your favorite hobby?"
	user_input = gets.chomp
	if user_input == "0"
		cookie_count +=0
	elsif user_input == "1"
		cookie_count +=1
	elsif user_input == "2"
	   	cookie_count +=2
	elsif user_input == "3"
	   	cookie_count +=3
end

puts "What is your ideal future home?"
	user_input = gets.chomp
	if user_input == "0"
		cookie_count +=0
	elsif user_input == "1"
		cookie_count +=1
	elsif user_input == "2"
	   	cookie_count +=2
	elsif user_input == "3"
	   	cookie_count +=3
end

if cookie_count <= 3
	cookie_result = "glutenfree"
	puts "You are a Gluten Free cookie! You live life on the edge.. of your bed. You probably get more zzz's than most of your friends."
elsif cookie_count >= 4 and cookie_count <= 7
	cookie_result = "chocochip"
	puts "You are a Chocolate Chip cookie! You embrace balance in life and know how to work hard but also play hard."
elsif cookie_count >= 8 and cookie_count <= 11
	cookie_result = "snickerdoodle"
	puts "You are a Snickerdoodle cookie! You generally follow the rules but are not afraid to push boundaries and challenge status quo."
elsif cookie_count >= 12
	cookie_result = "funfetti"
	puts "You are a Funfetti cookie! Good news: You are the life of the party! Bad news: You are that quintessential crazy friend."
end
