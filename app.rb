require_relative 'config/environment'
require 'pry'


class App < Sinatra::Base

  get '/' do
    erb :user_input

  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @piglatin = pl.to_pig_latin(params[:user_phrase])
    erb :results
  end

  # post '/piglatinize' do
  #   binding.pry
  #   @piglatin = Piglatinizer.new(params[:user_phrase])
  #   erb :results
  # end

end
