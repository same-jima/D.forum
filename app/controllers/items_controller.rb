class ItemsController < ApplicationController
  def index
    @items = Item.includes(:user).order("created_at DESC")
  end
  def new
    @item = Item.new
  end
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      @items = Item.includes(:user)
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :text, :category_id, :price).merge(user_id: current_user.id)
  end
end
