require 'sinatra'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello World'
  end

get '/bookmark' do
  
end

  run! if app_file == $0
end
