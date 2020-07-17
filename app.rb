require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    "Site at least works."
  end
  get '/reversename/:name' do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end

    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    answer = ''

      answer += params[:word1] + " "
      answer += params[:word2]+ " "
      answer += params[:word3] + " "
      answer += params[:word4] + " "
      answer += params[:word5]

    answer = answer + "."
  end

  get '/:operation/:number1/:number2' do
   case params[:operation]
   when 'add'
     return (params[:number1].to_i + params[:number2].to_i).to_s
   when 'subtract'
     return (params[:number1].to_i - params[:number2].to_i).to_s
   when 'multiply'
     return (params[:number1].to_i * params[:number2].to_i).to_s
   when 'divide'
     return (params[:number1].to_i / params[:number2].to_i).to_s
   end
  end

end
