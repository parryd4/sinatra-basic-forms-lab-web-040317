require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/new' do


    pup = Puppy.new(params["name"],params["breed"],params["age"])
    @name = pup.name
    @breed = pup.breed
    @age = pup.age
    erb :display_puppy
  end

end
