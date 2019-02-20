require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    (params[:number].to_i ** 2).to_s
  end

  get "/say/:number/:phrase" do
    # binding.pry
    Array.new(params[:number].to_i, params[:phrase]).to_s
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    params.values.join(" ") + "."
  end

  get "/:operation/:number1/:number2" do
    operations = {"add" => :+,"subtract" => :-,"multiply" => :*,"divide" => :/}
    op = operations[params[:operation]]
    begin
      params[:number1].to_i.method(op).(params[:number2].to_i).to_s
    rescue
      404 #page not found if operation doesn't exist
    end
  end
end
