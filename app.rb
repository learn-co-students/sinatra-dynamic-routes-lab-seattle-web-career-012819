require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    params[:name].reverse
  end 

  get '/square/:number' do 
   "#{params[:number].to_i * params[:number].to_i}"
    end 

  get '/say/:number/:phrase' do 
    new = []
    @number = params[:number].to_i
    @number.times do 
      new << "#{params[:phrase]}"
   end 
   new.join(" ")
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do
     if params[:operation] == "add"
      answer = (params[:number1].to_i + params[:number2].to_i)
     elsif params[:operation] == "subtract"
      answer = (params[:number1].to_i - params[:number2].to_i)
    elsif params[:operation] == "divide"
      answer = (params[:number1].to_i / params[:number2].to_i)
    else 
      answer = (params[:number1].to_i * params[:number2].to_i)
    end 
    answer.to_s
  end 
   

  

end