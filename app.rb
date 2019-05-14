require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    initial_name = params[:name]
    initial_name.reverse
  end

  get '/square/:number' do
    first_number = params[:number].to_i
    (first_number * first_number).to_s
  end

  get '/say/:number/:phrase' do
    i = 0
    str = ""
    #binding.pry
    while i < params[:number].to_i
       str = str + "#{params[:phrase]} "
      i+=1
    end
    str
  end

   get '/say/:word1/:word2/:word3/:word4/:word5' do
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
   end

   get '/:operation/:number1/:number2' do
     opp_type = params[:operation]
     num1 = params[:number1].to_i
     num2 = params[:number2].to_i
     result = 0

     #binding.pry

     if opp_type == "add"
       result = num1 + num2
       #binding.pry
     elsif opp_type == "subtract"
       result = num1 - num2
     elsif opp_type == "multiply"
      result = num2 * num1
     elsif opp_type == "divide"
       result = num1 / num2
     end
     "#{result}"
   end
end
