require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do 
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do 
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get "/say/:number/:phrase" do
    "#{params[:phrase] * params[:number].to_i}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    params.values.join(" ") + "."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    operations = {
      "add" => "+",
      "subtract" => "-",
      "multiply" => "*",
      "divide" => "/"}
    "#{params[:number1].to_i.public_send operations[@operation], params[:number2].to_i}" 
  end

end