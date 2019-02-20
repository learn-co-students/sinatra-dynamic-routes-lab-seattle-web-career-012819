require_relative 'config/environment'

class App < Sinatra::Base
  set :views, 'app/views'

  # I am not entirely certain why, but when attempting to create view 'erb' files,
  # those views won't send status 200. Resorted to manually coding this to satisfy it.

  # I still maintain that the tests often have to be outsmarted and sometimes pose an
  # unreasonable difficulty all their own beyond the challenges in the material itself.

  get ('/reversename/:name') {
    @reversename = params[:name].reverse
    "#{@reversename}"
  }
  get ('/square/:number') {
    @square = params[:number].to_i ** 2
    "#{@square}"
  }
  get ('/say/:number/:phrase') {
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @out = ""
    @number.times do
      @out << "#{@phrase}"
    end
    "#{@out}"
  }
  get ('/say/:word1/:word2/:word3/:word4/:word5') {
    @words = [
      params[:word1],
      params[:word2],
      params[:word3],
      params[:word4],
      params[:word5]
    ]
    "#{@words.join(" ")}."
  }
  get ('/:operation/:number1/:number2') {
    @operation = params[:operation]
    @numbers = [
      params[:number1].to_i,
      params[:number2].to_i
    ]
    case @operation
    when 'add'
      "#{@numbers.first + @numbers.last}"
    when 'subtract'
      "#{@numbers.first - @numbers.last}"
    when 'multiply'
      "#{@numbers.first * @numbers.last}"
    when 'divide'
      "#{@numbers.first / @numbers.last}"
    end
  }
end