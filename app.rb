require 'sinatra/base'
require_relative '../model/memory'

class DatabaseServerApp < Sinatra::Base

  @memory = Memory.new

  get '/' do
    "hi"
  end

  run! if app_file == $0
end
