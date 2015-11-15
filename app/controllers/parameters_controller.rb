class ParametersController < ApplicationController
  
  def parameters
    @name = params[:name]
    if @name[0,1] == "a"
      @name = "Hey, your name starts with the first letter of the alphabet!"
    end
  end

  def number_game
    secret_number = 45
    guess = params[:guess].to_i
    if guess > secret_number
      @message = "Too high"
    elsif guess < secret_number
      @message ="Too low"
    else 
      @message = "Correct!"
    end
  end


  def form_display
  end 

  def form_result
    message = params[:guess]
    puts message
  end

  def number_picked
    puts "STuff"
  end

end
