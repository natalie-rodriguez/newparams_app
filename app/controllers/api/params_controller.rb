class Api::ParamsController < ApplicationController
  def query 
  p 'params'
  p  params["name"]
  render "query_paramater.json.jb"
  end
end
