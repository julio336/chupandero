class RegistersController < ApplicationController
  # GET /registers
  # GET /registers.json
  def new
    @register = Register.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @register }
    end
  end

  
  # POST /registers
  # POST /registers.json
  def create
     @register = Register.new(params[:register])
     if @register.save
        UserMailer.signup_confirmation(@register).deliver
        redirect_to root_path
     else
        render :new
     end
  end
  

 

  # DELETE /registers/1
  # DELETE /registers/1.json
  def destroy
    @register = Register.find(params[:id])
    @register.destroy

    respond_to do |format|
      format.html { redirect_to registers_url }
      format.json { head :no_content }
    end
  end
end
