require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  # square a user provided number
  # remember all input is string in webapps
  # must output as string as well
  # convert to other string format
  # as needed 
  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    response = ''
    params[:number].to_i.times do
      response += params[:phrase]
    end
    response
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    answer = 'Unable to perform calculation'
    x = params[:number1].to_i
    y = params[:number2].to_i

    case params[:operation]
    when 'add'
      answer = (x + y).to_s 
    when 'subtract'
      answer = (x - y).to_s
    when 'multiply'
      answer = (x * y).to_s 
    when 'divide'
      answer = (x / y).to_s
    end
  end
end