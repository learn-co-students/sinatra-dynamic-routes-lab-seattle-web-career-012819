require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    params[:name].reverse 
  end

  get '/square/:number' do 
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do 
    new_arry = []
    @number = params[:number].to_i
    @number.times do 
    new_arry << "#{params[:phrase]}"
    end
    new_arry.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} " + "#{params[:word2]} "  + "#{params[:word3]} "  + "#{params[:word4]} "  + "#{params[:word5]}." 
  end

  get '/:operation/:number1/:number2' do
    #binding.pry
    operation = params[:operation]
    if operation == "add"
      answer = (params[:number1].to_i + params[:number2].to_i)
    elsif operation == "subtract"
      answer = (params[:number1].to_i - params[:number2].to_i)
    elsif operation == "multiply"
      answer = (params[:number1].to_i * params[:number2].to_i)
    elsif operation == "divide"
      answer = (params[:number1].to_i / params[:number2].to_i)
    end
    answer.to_s
  end

end