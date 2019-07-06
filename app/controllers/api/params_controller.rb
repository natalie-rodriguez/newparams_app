class Api::ParamsController < ApplicationController
  def query 
 name = params["name"]
  first_character = params["name"][0]
  if first_character == "a"
    @message = "the first letter of your name is A"
else 
 @message = "your name is #{name}"
end
  render "query_paramater.json.jb"
  end

  def game 
  #get user input 
  the_guess= params['user_guess'].to_i
  #compare input to actual answer 
  if the_guess == 32
    p ' good guess '
    elsif the_guess > 32
    p 'too high, try again'
  elsif the_guess < 32 
    p 'too low , try again'
  end
  #give the user message based on their guess 
  render "guess.json.jb"
end
  def url_segment_method
    render "segment_view.json.jb"
  end
end 
