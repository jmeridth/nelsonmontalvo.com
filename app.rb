require 'sinatra'
require 'haml'

class Nelson < Sinatra::Base
  get '/' do
    haml :index
  end

  get '/lastpicture' do
    haml :lastpicture
  end

  get '/blog' do
    haml :blog
  end

  get '/obituary' do
    haml :obituary
  end

  get '/funeral' do
    haml :funeral
  end

  get '/count' do
    haml :count
  end

  not_found do
    haml :error
  end

  error do
    haml :error
  end
end
