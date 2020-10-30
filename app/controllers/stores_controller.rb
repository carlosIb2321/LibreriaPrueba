class StoresController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy ]
  def index
    if current_user.present? 
      @stores = current_user.stores
    else
      @stores = Store.all
    end
  end

  def new 
    @store = Store.new
  end

  def create 
     
    @store = Store.new store_params
    @store.user = current_user
    if @store.save 
      redirect_to stores_path
    else
      render :new
    end
    
  end


  def show
    @storages = Store.find(params[:id]).storage
  end

  def edit
  end

  def update
    @store.update store_params
    redirect_to @store
  end

  def destroy 
    @store.destroy
    redirect_to stores_path
  end

  private
  def store_params
    params.require(:store).permit(:codename, :address, :Phone)
  end

  def set_store
    @store = Store.find params[:id]
  end
end
