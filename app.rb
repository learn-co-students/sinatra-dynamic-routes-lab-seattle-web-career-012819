require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i**2}"
  end

  get '/say/:number/:phrase' do
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

  get '/:operation/:number1/:number2' do
    action = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case action
    when "add"
      "#{num1 + num2}"
    when "subtract"
      "#{num2 - num1}"
    when "multiply"
      "#{num1 * num2}"
    when "divide"
      "#{num1/num2}"
    end
  end

end
