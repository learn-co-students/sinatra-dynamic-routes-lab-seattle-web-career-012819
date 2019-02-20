require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/' do
    "Rest easy, you're on the home page"
  end
  
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i*params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    result = []
    params[:number].to_i.times do 
      result << params[:phrase]
    end
    "#{result.map do |i| 
     i end}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    arr = []
    params.each do |k, v|
      arr << v
    end
    str = arr.join(" ")
    str << "."
    str
  end

  get '/:operation/:number1/:number2' do
    ops = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if ops == "add"
      ans = num1 + num2
    elsif ops == "subtract"
      ans = num1 - num2
    elsif ops == "multiply"
      ans = num1 * num2
    elsif ops == "divide"
      ans = num1 / num2
    end
    ans.to_s
  end

end