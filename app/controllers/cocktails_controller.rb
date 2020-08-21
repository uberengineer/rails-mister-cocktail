class CocktailsController < ApplicationController
  before_action :find, only: [:show, :edit, :update, :destroy]
  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_url
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def find
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
