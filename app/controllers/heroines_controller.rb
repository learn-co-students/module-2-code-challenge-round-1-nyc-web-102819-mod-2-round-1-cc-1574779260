class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def create
     @heroine = Heroine.new(strong_params)
     @error = false
     if @heroine.save
       # success
       redirect_to heroines_path
     else
    @error = true
    redirect_to new_heroines_path
     end
  end

  private

  def strong_params
    params.require(:heroine).permit(:name, :super_name,:power_id)
  end
end
