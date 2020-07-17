require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    (@number ** 2).to_s
  end

  get '/say/:number/:phrase' do
    @number, @phrase = params[:number].to_i, params[:phrase]

    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = params.fetch_values(:word1, :word2, :word3, :word4, :word5)
    new_string = words.join(" ")
    new_string << "."
  end

  get '/:operation/:number1/:number2' do
    op_match = {add: '+', subtract: '-', multiply: '*', divide: '/'}
    operation = op_match[params[:operation].to_sym].to_sym
    num_1, num_2 = params.fetch_values(:number1, :number2).map(&:to_i)

    num_1.send(operation, num_2).to_s
  end
end
