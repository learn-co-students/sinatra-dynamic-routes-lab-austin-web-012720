require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name_reversed = params[:name].reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    square = @num * @num
    square.to_s
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number]
    repeat = @phrase * @number.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation] == "add"
      ans = @num1 + @num2
    elsif params[:operation] == "subtract"
      ans = @num1 - @num2
    elsif params[:operation] == "multiply"
      ans = @num1 * @num2
    else
      ans = @num1 / @num2
    end
    ans.to_s
  end

end