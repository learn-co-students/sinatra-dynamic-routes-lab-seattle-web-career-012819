require_relative 'config/environment'

class App < Sinatra::Base
  set :views, 'app/views'

  # Refactored to be as tight as possible.

  get ('/reversename/:name') { "#{params[:name].reverse}" }

  get ('/square/:number') { "#{params[:number].to_i ** 2}" }

  get ('/say/:number/:phrase') {
    ["#{params[:phrase]}"].cycle(params[:number].to_i).to_a.join("")
  }

  get ('/say/:word1/:word2/:word3/:word4/:word5') {
    "#{params.map{ |key, val| val }.join(" ")}."
  }

  get ('/:operation/:number1/:number2') {
    case params[:operation]
    when 'add'
      "#{params[:number1].to_i + params[:number2].to_i}"
    when 'subtract'
      "#{params[:number1].to_i - params[:number2].to_i}"
    when 'multiply'
      "#{params[:number1].to_i * params[:number2].to_i}"
    when 'divide'
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  }
end