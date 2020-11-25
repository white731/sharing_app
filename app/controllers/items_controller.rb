class ItemsController < ApplicationController
  def index
    # @user_items = current_taker.giver.items.all
    @items = Item.all
  end

  def show
    @giver_items = current_taker.giver.items.all
  end

  def new
  end

  def edit
  end
end
