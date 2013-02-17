class ShirtsController < ApplicationController
  def index
    @shirts = []
    8.times { @shirts << Shirt.all.first }
    #@shirts = Shirt.all
  end

  def show
    @shirt = Shirt.find(params[:id])
  end
end
