require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/customer')
require_relative('./models/film')
require_relative('./models/ticket')
also_reload('.models/*')

get '/' do
  erb(:index)
end

get '/films/:id' do
  @film = Film.find_by_id(params[:id].to_i)
    # @calculation = Calculator.multiply(params[:num1].to_i, params[:num2].to_i)
  erb(:result)
end

get '/films' do

  @films = Film.all()
  erb(:films)
end
