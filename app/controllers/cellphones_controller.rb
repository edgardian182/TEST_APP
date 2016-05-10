class CellphonesController < ApplicationController
  
  before_action :set_cellphone, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:index, :show]
  before_action :require_same_user, only: [:edit, :update]
  
  
  def index
    @cellphones = Cellphone.paginate(page: params[:page], per_page: 10)
  end
  
  def new
    @cellphone = Cellphone.new
  end
  
  def create
    @cellphone = Cellphone.new(cellphone_params)
    @cellphone.user = current_user
    if @cellphone.save
      flash[:notice] = "The phone was successfully created"
      redirect_to @cellphone
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
    flash[:notice] = "Phote successfully deleted"
    redirect_to cellphones_path
  end
  
  
  private
  def cellphone_params
    params.require(:cellphone).permit(:reference, :os)
  end
  
  def set_cellphone
    @cellphone = Cellphone.find(params[:id])
  end
  
  def require_same_user
    if current_user != @cellphone.user && !current_user.admin
      flash[:danger] = "You can only edit or delete your own devices"
      redirect_to root_path
    end
  end
  
  
end