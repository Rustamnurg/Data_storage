class NewItemsController < ApplicationController
  before_action :set_new_item, only: [:show, :edit, :update, :destroy]

  # GET /new_items
  def index
    @new_items = NewItem.all
  end

  # GET /new_items/1
  def show
  end

  # GET /new_items/new
  def new
    @new_item = NewItem.new
  end

  # GET /new_items/1/edit
  def edit
  end

  # POST /new_items
  def create
    @new_item = NewItem.new(new_item_params)

    if @new_item.save
      redirect_to @new_item, notice: 'New item was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /new_items/1
  def update
    if @new_item.update(new_item_params)
      redirect_to @new_item, notice: 'New item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /new_items/1
  def destroy
    @new_item.destroy
    redirect_to new_items_url, notice: 'New item was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_item
      @new_item = NewItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def new_item_params
      params.require(:new_item).permit(:title, :content, :url, :description, :url, :url_to_image, :author)
    end
end
