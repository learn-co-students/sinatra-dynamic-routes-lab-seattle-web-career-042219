require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    square = params[:number].to_i * params[:number].to_i
    square.to_s
  end

  get '/say/:number/:phrase' do
    @phrase= ""
    params[:number].to_i.times do
      @phrase << params[:phrase] + " "
    end
    @phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = params.map{|k,v| v}.join(" ")
    @phrase << "."
  end

  get '/:operation/:num1/:num2' do
    if params[:operation] == 'add'
      result = params[:num1].to_i + params[:num2].to_i
      result.to_s
    elsif params[:operation] == 'subtract'
      result = params[:num1].to_i - params[:num2].to_i
      result.to_s
    elsif params[:operation] == 'multiply'
      result = params[:num1].to_i * params[:num2].to_i
      result.to_s
    elsif params[:operation] == 'divide'
      result = params[:num1].to_i / params[:num2].to_i
      result.to_s
    end
  end
end
