require 'sinatra/base'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/action' do
    session[:name] = params['Name']
    session[:month] = params['Month']
    session[:day] = params['Day']
    redirect 'message'
  end

  get '/message' do
    erb :message, { locals: {
      name: session[:name],
      month: session[:month],
      day: session[:day]
      } }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
