class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
    power = Power.find(params[:id])
    # power = Power.where(power_id: @power.id)

  end

  def new
    @heroine = Heroine.new
    @power = Power.all
  end

  def create
    heroine = Heroine.new(heroine_params)
    if heroine.save
      redirect_to heroine_path(heroine)
    else
      redirect_to new_heroine_path
    end
  end

private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
