class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = Power.all.find_by(id: @heroine.power_id)
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    heroine = Heroine.new(heroine_params)

    if heroine.save
      redirect_to heroine_path(heroine)
    else
      flash[:error] = heroine.errors.full_messages
      redirect_to new_heroine_path
    end

  end

  def search
    @heroine = Heroine.find(params[:search])
    
    redirect_to heroine_path(@heroine)
  end




  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  end


end
