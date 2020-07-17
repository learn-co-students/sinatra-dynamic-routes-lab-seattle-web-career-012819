require_relative 'config/environment'
require "pry"

class App < Sinatra::Base
  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get "/say/:number/:phrase" do
    number = params[:number].to_i
    phrase = params[:phrase]
    str = ""
    number.times {str += phrase}
    str
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    str = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    str
  end

  get "/:operation/:number1/:number2" do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if op == "add"
      "#{num1 + num2}"
    elsif op == "subtract"
      "#{num2 - num1}"
    elsif op == "multiply"
      "#{num2 * num1}"
    elsif op == "divide"
      "#{num1 / num2}"
    end
  end


end
