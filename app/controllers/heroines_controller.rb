class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
    @powers = Power.all
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.create(heroine_params)
    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      flash[:errors] = @heroine.errors.full_messages
      redirect_to new_heroine_path
    end
  end

  def edit
    @heroine = Heroine.find(params[:id])
    @powers = Power.all
  end

  def update
    @heroine = Heroine.find(params[:id])
    # @heroine.update(heroine_params)
    if @heroine.update(heroine_params)
      redirect_to heroine_path(@heroine)
    else
      flash[:errors] = @heroine.errors.full_messages
      redirect_to edit_heroine_path(@heroine)
    end
  end

  def delete
    heroine = Heroine.find(params[:id])
    heroine.destroy
    redirect_to heroines_path
  end




private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end

