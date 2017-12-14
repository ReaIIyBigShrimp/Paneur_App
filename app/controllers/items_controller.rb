class ItemsController < ApplicationController
  def index
    # Returns all items from test database
    @items = Item.all
  end
  def show
    # Single item view
    @item = Item.find(params[:id])
  end
  def new
    # Creates new item instance
    @item = Item.new
  end
  def edit
    # Edit the existing item
    @item = Item.find(params[:id]) 
  end
  def create
    # Create the net object Item.
    @item = Item.new(item_params)
    
    if @item.save
    redirect_to @item
    else
      # If form data is invalid, re-render form.
      render('new')
    end
  end
  def update
    # Update existing item data.
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to @item
    else
      # If form data is invalid, re-render form.
      render('edit')
    end
  end
  # Delete
  def destroy
    # Get ID and DROP
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to items_path
  end
  private
    def item_params
      params.require(:item).permit(:title, :text)
    end
end
