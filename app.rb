require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    erb :reversename
  end

  get '/square/:number' do
    erb :square
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_one = params[:word1]
    @word_two = params[:word2]
    @word_three = params[:word3]
    @word_four = params[:word4]
    @word_five = params[:word5]
    erb :say_word
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num_one = params[:number1].to_i
    @num_two = params[:number2].to_i
    erb :operation
  end

end
