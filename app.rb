require_relative "config/environment"

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    name = params[:name]
    name.reverse
  end

  get "/square/:number" do
    number = params[:number]
    result = number.to_i ** 2
    "#{result}"
  end

  get "/say/:number/:phrase" do
    number = params[:number].to_i
    phrase = params[:phrase]
    result = ""
    number.times do
      result << "#{phrase}\n"
    end
    result
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    operator = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case operator
    when "add"
      result = num1 + num2
    when "subtract"
      result = num1 - num2
    when "multiply"
      result = num1 * num2
    when "divide"
      result = num1 / num2
    end
    "#{result}"
  end
end
