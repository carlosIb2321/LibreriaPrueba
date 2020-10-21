class StoresController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy ]
  def index
    @stores = Store.all
  end

  def new 
    @store = Store.new
  end

  def create 
    # render plain: params[:store].inspect
    @store = Store.new store_params
    @store.save
    # if @store.save 
    #   redirect_to new_store_path
    #else
     #  render :new
    #end
    redirect_to @store
  end


  def show
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
