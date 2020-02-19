require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
    get '/reversename/:name' do
      @name = params[:name]
      "#{@name.reverse}"
    end

    get '/square/:number' do
      @num = params[:number]
      "#{@num.to_i**2}"
    end

    get '/say/:number/:phrase' do
      num = params[:number].to_i
      @phr = params[:phrase]
       @phr * num
    end
    get '/say/:word1/:word2/:word3/:word4/:word5' do
      sentence = ""
      params.each{|k,v| sentence += (v + ' ')}
      nice = sentence.rstrip
      nice + '.'
    end
    get '/:operation/:number1/:number2' do

      num1 = params[:number1].to_i
      num2 = params[:number2].to_i
      if params[:operation] == 'add'
         "#{num1+num2}"
      elsif params[:operation]== 'subtract'
         "#{num1-num2}"
      elsif params[:operation] =='multiply'
         "#{num1*num2}"
      elsif params[:operation]== 'divide'
         "#{num1/num2}"
      end




    end


end
