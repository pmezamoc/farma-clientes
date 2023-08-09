class ApplicationController < ActionController::Base

  
  def start
    render({:template => "index"})
  end 

  
end
