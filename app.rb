require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @reversed_name = @name.reverse
    @reversed_name
  end

  get '/square/:number' do
    @number = params[:number]
    @squared_number = (@number.to_i * @number.to_i)
    @squared_number.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    phrase_array = []
    @number.to_i.times do
      phrase_array << @phrase
    end
    phrase_array.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "add"
      (@number1.to_i + @number2.to_i).to_s
    elsif @operation == "subtract"
      (@number1.to_i - @number2.to_i).to_s
    elsif @operation == "multiply"
      (@number1.to_i * @number2.to_i).to_s
    else
      (@number1.to_i / @number2.to_i).to_s
    end
  end
end