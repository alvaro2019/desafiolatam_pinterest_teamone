class PinsController < ApplicationController
before_action :set_pin, only: [:like, :destroy, :edit, :update, :show]
  def index
  	@pins = Pin.all
  end

  def like
  	Like.create(pin: @pin, user: current_user)
  	redirect_to pins_path
  end

  def destroy
  	@pin.likes.delete_all
  	@pin.delete
  	redirect_to pins_path
  end

  def show

  end

  def update
  	@pin.update(pins_params)
  	redirect_to pins_path
  end

  def set_pin
  	@pin = Pin.find(params[:id])
  end	

  def new
  	@pin = Pin.new
  end

  def edit
  end

  def create
  	@pin = Pin.new(pins_params)
  	@pin.user = current_user
  	if @pin.save!
  		redirect_to pins_path  		
  	else
  		redirect new_pin_path, notice: 'Error desconocido'
  	end
  end

  private

	  def pins_params
	  	params.require(:pin).permit(:name, :desc, :photo)
	  end

  end
