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
end
