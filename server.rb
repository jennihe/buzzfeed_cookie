require 'sinatra'



post '/cookie_submit' do
  puts params
  cookie_count = 0
  cookie_result = NIL

user_input=params["Question1"]
  if user_input == "0"
    cookie_count +=0
  elsif user_input == "1"
    cookie_count +=1
  elsif user_input == "2"
      cookie_count +=2
  elsif user_input == "3"
      cookie_count +=3
  end

  user_input=params["Question2"]
    if user_input == "0"
      cookie_count +=0
    elsif user_input == "1"
      cookie_count +=1
    elsif user_input == "2"
        cookie_count +=2
    elsif user_input == "3"
        cookie_count +=3
    end

    user_input=params["Question3"]
      if user_input == "0"
        cookie_count +=0
      elsif user_input == "1"
        cookie_count +=1
      elsif user_input == "2"
          cookie_count +=2
      elsif user_input == "3"
          cookie_count +=3
      end

      user_input=params["Question4"]
        if user_input == "0"
          cookie_count +=0
        elsif user_input == "1"
          cookie_count +=1
        elsif user_input == "2"
            cookie_count +=2
        elsif user_input == "3"
            cookie_count +=3
        end

        user_input=params["Question5"]
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
        	return "You are a Gluten Free cookie! You live life on the edge.. of your bed. You probably get more zzz's than most of your friends."
        elsif cookie_count >= 4 and cookie_count <= 7
        	cookie_result = "chocochip"
        	return "You are a Chocolate Chip cookie! You embrace balance in life and know how to work hard but also play hard."
        elsif cookie_count >= 8 and cookie_count <= 11
        	cookie_result = "snickerdoodle"
        	return "You are a Snickerdoodle cookie! You generally follow the rules but are not afraid to push boundaries and challenge status quo."
        elsif cookie_count >= 12
        	cookie_result = "funfetti"
        	return "You are a Funfetti cookie! Good news: You are the life of the party! Bad news: You are that quintessential crazy friend."
        end

end
