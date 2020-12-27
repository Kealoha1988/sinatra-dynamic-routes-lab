require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse
  end

  get "/square/:number" do 
    @user_num = params[:number]
    cool = @user_num.to_i * @user_num.to_i 
    cool.to_s
  end

  get "/say/:number/:phrase" do
    @num = params[:number]
    @hello = params[:phrase]
    @hello * @num.to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

  end

  get '/:operation/:number1/:number2' do
    @thing = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    if @thing == "add"
      @num1.to_i + @num2.to_i
    elsif @thing == "subtract"
      @num1.to_i - @num2.to_i
    elsif @thing == "multiply"
        @num1.to_i * @num2.to_i
      elsif @thing == "divide"
        @num1.to_i / @num2.to_i
      end.to_s
  end

end