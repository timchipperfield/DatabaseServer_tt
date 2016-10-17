require 'sinatra/base'
require_relative './model/memory'
require_relative './controller/session_memory'

class DatabaseServerApp < Sinatra::Base

  @memory = Memory.new

  get '/' do
    "hi"
  end


get "/set" do
  key&val = request.query_string
  string_to_add.split('=')
end



  set :port, 4000
  run! if app_file == $0
end

# [\w]+
# just looks up params
