require 'sinatra'

enable :sessions

get "/" do
  redirect '/index.html'
end

post '/cookie_submit' do
  puts params
  cookie_count = 0

["Question1", "Question2", "Question3", "Question4"].each do |user_input|
  cookie_count += params[user_input].to_i
end


        if cookie_count <= 3
        	session[:cookie_result] = "result1.png"
        	session[:cookie_message] = "You are a Gluten Free cookie! You live life on the edge.. of your bed. You probably get more zzz's than most of your friends."
        elsif cookie_count >= 4 and cookie_count <= 7
        	session[:cookie_result] = "result2.png"
        	session[:cookie_message] = "You are a Chocolate Chip cookie! You embrace balance in life and know how to work hard but also play hard."
        elsif cookie_count >= 8 and cookie_count <= 11
        	session[:cookie_result] = "result3.png"
        	session[:cookie_message] = "You are a Snickerdoodle cookie! You generally follow the rules but are not afraid to push boundaries and challenge status quo."
        elsif cookie_count >= 12
        	session[:cookie_result] = "result4.png"
        	session[:cookie_message] = "You are a Funfetti cookie! Good news: You are the life of the party! Bad news: You are that quintessential crazy friend."
        end

        redirect "/result"

end

get '/result' do
  @cookie_result = session[:cookie_result]
  @cookie_message = session[:cookie_message]
  session.delete(:cookie_result)
  session.delete(:cookie_message)
  erb :result
end
