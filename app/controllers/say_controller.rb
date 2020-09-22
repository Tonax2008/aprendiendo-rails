class SayController < ApplicationController
  def hello
    @time = Time.now
    @Addition = "Profesor"
    @Concatenation = "cow" + "boy" 
    experiment
  end

  def experiment
    @Time_hour = 1.hour.from_now.localtime 
    
  end

  def goodbye
  end

  def new
  end

  def hola
  end
end
