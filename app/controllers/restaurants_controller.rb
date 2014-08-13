class RestaurantsController < ApplicationController

  def index
    @restaurants = Resto.all
  end

  def show
    @restaurant = Resto.find(params[:id])
  end

  def new #get
    @restaurant = Resto.new
  end

  def create #post
    Resto.create(restaurant_params)
    redirect_to restaurants_path
  end

  private
  def restaurant_params
    params.require(:resto).permit(:name, :adress, :phone, :category)
  end

end
