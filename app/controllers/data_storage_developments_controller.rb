class DataStorageDevelopmentsController < ApplicationController
  before_action :set_data_storage_development, only: [:show, :edit, :update, :destroy]

  # GET /data_storage_developments
  def index
    @data_storage_developments = DataStorageDevelopment.all
  end

  # GET /data_storage_developments/1
  def show
  end

  # GET /data_storage_developments/new
  def new
    @data_storage_development = DataStorageDevelopment.new
  end

  # GET /data_storage_developments/1/edit
  def edit
  end

  # POST /data_storage_developments
  def create
    @data_storage_development = DataStorageDevelopment.new(data_storage_development_params)

    if @data_storage_development.save
      redirect_to @data_storage_development, notice: 'Data storage development was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /data_storage_developments/1
  def update
    if @data_storage_development.update(data_storage_development_params)
      redirect_to @data_storage_development, notice: 'Data storage development was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /data_storage_developments/1
  def destroy
    @data_storage_development.destroy
    redirect_to data_storage_developments_url, notice: 'Data storage development was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_storage_development
      @data_storage_development = DataStorageDevelopment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def data_storage_development_params
      params.require(:data_storage_development).permit(:title, :content, :url, :description, :url, :url_to_image, :author)
    end
end
