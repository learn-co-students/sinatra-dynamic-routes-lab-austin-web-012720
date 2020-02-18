require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @name = params[:name].reverse
  end

  get '/square/:number' do 
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get '/say/:number/:phrase' do 
    @phrase = ''
    params[:number].to_i.times do 
      @phrase += params[:phrase]
    end
    @phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @phrase = "#{params[:word1]}" + " " + "#{params[:word2]}" + " " + "#{params[:word3]}" + " " + "#{params[:word4]}" + " " + "#{params[:word5]}."
    # binding.pry
    @phrase
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
      binding.pry
    case params[:operation]
    when 'add'
      binding.pry
      @answer = (num1 + num2).to_s
    when 'subtract'
      binding.pry
      @answer = (num1 - num2).to_s
    when 'multiply'
      binding.pry
      @answer = (num1 * num2).to_s
    when 'divide'
      binding.pry
      @answer = (num1 / num2).to_s
    end
  end

end