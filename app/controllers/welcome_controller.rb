class WelcomeController < ApplicationController
  def hello
  	@time = Time.now
  	@name = params[:name]
  end
 
  def thanks
  	render 'shared/thank_you'
  end
  
  def mailbox
  	render 'shared/thank_you'
  end
end 
