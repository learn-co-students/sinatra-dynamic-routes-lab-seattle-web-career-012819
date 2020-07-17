require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num ** 2}"
  end

  get '/say/:number/:phrase' do
    result = ''
    @num = params[:number].to_i
    @phrase = params[:phrase]
    while @num > 0
      result += @phrase
      @num -= 1
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]

    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if operation == 'add'
      return (num1 + num2).to_s
    elsif operation == 'subtract'
      return (num1 - num2).to_s
    elsif operation == 'multiply'
      return (num1 * num2).to_s
    elsif operation == 'divide'
      return (num1 / num2).to_s
    end
  end
end