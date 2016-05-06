class CellphonesController < ApplicationController
  
  before_action :set_cellphone, only: [:show, :edit, :update, :destroy]
  
  
  def index
    @cellphones = Cellphone.all
  end
  
  def new
    @cellphone = Cellphone.new
  end
  
  def create
    @cellphone = Cellphone.new(cellphone_params)
    if @cellphone.save
      flash[notice] = "The phone was successfully created"
      redirect_to cellphones_path
    else 
      render 'new'
    end
  end
  
  def show
  end

  def edit
  end
  
  def update
    if @cellphone.update(cellphone_params)
      flash[:notice] = "Successfully updated"
      redirect_to cellphones_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @cellphone.destroy
    redirect_to cellphones_path
  end
  
  
  private
  def cellphone_params
    params.require(:cellphone).permit(:reference, :os, :user_id)
  end
  
  def set_cellphone
    @cellphone = Cellphone.find(params[:id])
  end
  
  
end