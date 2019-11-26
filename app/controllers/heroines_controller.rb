class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    @power = Power.new
  end

  def show
    @heroine = Heroine.find_by_id(params[:id])
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    strong_params = params.require(:heroine).permit(:name, :super_name, :power_id)
    heroine = Heroine.new(strong_params)
    if heroine.save
      redirect_to heroine_path(heroine.id)
    else 
      flash[:errors] = heroine.errors.full_messages
      redirect_to new_heroine_path
    end
  end

  def search
    @my_power = params[:power_name]
    selected_power = Power.find_by_name(params[:power_name])
    if selected_power
      @show_power = selected_power
    else
      @show_power = Power.new
    end
  end

end
