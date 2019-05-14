require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @catch_phrase = params[:phrase]

    @catch_phrase * @num.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]

    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]

    if @operation == "multiply"
      "#{@number1.to_i * @number2.to_i}"
    elsif @operation == "subtract"
      "#{@number1.to_i - @number2.to_i}"
    elsif @operation == "add"
      "#{@number1.to_i + @number2.to_i}"
    elsif @operation == "divide"
      "#{@number1.to_i / @number2.to_i}"
    end
  end


end
