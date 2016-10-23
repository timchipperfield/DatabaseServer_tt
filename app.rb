require 'sinatra/base'
require_relative './model/memory'
require 'json'

class DatabaseServerApp < Sinatra::Base
  enable :sessions

get "/set" do
  session[:params] = params.to_json
   erb :set_view
   redirect '/'
end

get '/' do
  erb :wait_for_get
end

get "/get" do
  @value = retrive_memory(session[:params], params[:key])
  erb :value
end



  set :port, 4000
  run! if app_file == $0
end

# [\w]+
# just looks up params
