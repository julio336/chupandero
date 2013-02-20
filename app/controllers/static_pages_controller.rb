class StaticPagesController < ApplicationController
   
  def home
  end

  def contact
  end
  
  def registro
     @register = Register.new
  end
  
end
