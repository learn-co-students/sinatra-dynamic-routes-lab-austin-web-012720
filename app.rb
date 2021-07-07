require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get '/reversename/:name'do
    @name = params[:name].reverse
    # "@name.reverse"
  end
  
  get '/square/:number' do
    @square = params[:number].to_i**2
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @phrases = []
    @number = params[:number].to_i
    @number.times{
          @phrases << params[:phrase]
      }
      @phrases
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrases = ''
    index = 1
    # 5.times do
    #   @phrases += params[:"word#{index}"]+" "
    #   index +=1
    # end
    # @phrases+'.'
    params[:word1]+" "+params[:word2]+" "+params[:word3]+ " "+params[:word4]+ " "+params[:word5]+'.'
  end

  get '/:operation/:number1/:number2' do
    @op = :"#{params[:operation]}"
    @temp = {}
    @temp[:operation] = @op
    @sol = params[:number1].to_i.send @temp[:operation], params[:number2].to_i
    @sol.to_s
  end

end
