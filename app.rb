require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name = params[:name].reverse 
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    rep_phrase = ""
    params[:number].to_i.times do
      rep_phrase += params[:phrase]
    end

    rep_phrase
  end

  get '/say/:w1/:w2/:w3/:w4/:w5' do 
    "#{params[:w1]} #{params[:w2]} #{params[:w3]} #{params[:w4]} #{params[:w5]}."
  end

  get '/:operation/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    answer = "Unable to perform this operation."

    case params[:operation]
    when "add"
      answer = (num1 + num2).to_s
    when "multiply"
      answer = (num1 * num2).to_s
    when "subtract"
      answer = (num1 - num2).to_s
    when
      answer = (num1 / num2).to_s
    end

    answer
      
  end

end