require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number**2}"
  end

  get '/say/:number/:phrase' do
    n = params[:number].to_i
    phrase = params[:phrase]
    output = []
    n.times do
      output << phrase
    end
    "#{output.join(", ")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    final = [word1, word2, word3, word4, word5]
    "#{final.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    operator = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if operator.include?('add')
      "#{num1 + num2}"
    elsif operator.include?('subtract')
      "#{num2 - num1}"
    elsif operator.include?('multiply')
      "#{num1 * num2}"
    else operator.include?('divide')
      "#{num1 / num2}"
    end
  end
end
