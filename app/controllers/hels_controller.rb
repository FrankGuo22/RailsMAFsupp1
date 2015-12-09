class HelsController < ApplicationController
  before_action :set_hel, only: [:show, :edit, :update, :destroy]

  # GET /hels
  # GET /hels.json
  def index
    @orders = Order.all
    @lines = LineItem.all
    @products = Product.all
  end

  # GET /hels/1
  # GET /hels/1.json
  def show
  end

  # GET /hels/new
  def new
    @hel = Hel.new
  end

  # GET /hels/1/edit
  def edit
  end

  # POST /hels
  # POST /hels.json
  def create
    @hel = Product.new(hel_params)

    respond_to do |format|
      if @hel.save
        format.html { redirect_to @hel, notice: 'Hel was successfully created.' }
        format.json { render :show, status: :created, location: @hel }
      else
        format.html { render :new }
        format.json { render json: @hel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hels/1
  # PATCH/PUT /hels/1.json
  def update
    respond_to do |format|
      if @hel.update(hel_params)
        format.html { redirect_to @hel, notice: 'Hel was successfully updated.' }
        format.json { render :show, status: :ok, location: @hel }
      else
        format.html { render :edit }
        format.json { render json: @hel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hels/1
  # DELETE /hels/1.json
  def destroy
    @hel.destroy
    respond_to do |format|
      format.html { redirect_to hels_url, notice: 'Hel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hel
      @hel = Hel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hel_params
      params.require(:product).permit(:title, :description, :image_url, :price, :bottle_size, 
              :company, :country, :grape_type, :suit_vegetarian, :supplier_id)
    end
end
