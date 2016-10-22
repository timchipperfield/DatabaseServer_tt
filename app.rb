require 'sinatra/base'
require_relative './model/memory'

class DatabaseServerApp < Sinatra::Base
  enable :sessions

  @memory = Memory.new


# get '/set' do
#   if session['params'] == nil
#     redirect '/set'
#   end
#   p session['params']
# end

get "/set" do
  session['params'] = params.inspect
   @params = session['params']
   erb :set_view
   redirect '/'
end

get '/' do
  erb :wait_for_get
end

get "/get" do
  @key = params[:key].inspect
  @session = session['params']
  @value = @session[@key]
end



  set :port, 4000
  run! if app_file == $0
end

# [\w]+
# just looks up params
