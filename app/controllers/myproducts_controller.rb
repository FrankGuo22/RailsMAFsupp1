class MyproductsController < ApplicationController
  before_action :set_myproduct, only: [:show, :edit, :update, :destroy]

  # GET /myproducts
  # GET /myproducts.json
  def index
    @myproducts = Myproduct.all
  end

  # GET /myproducts/1
  # GET /myproducts/1.json
  def show
  end

  # GET /myproducts/new
  def new
    @myproduct = Myproduct.new
  end

  # GET /myproducts/1/edit
  def edit
  end

  # POST /myproducts
  # POST /myproducts.json
  def create
    
    @myproduct = Product.new(myproduct_params)

    respond_to do |format|
      if @myproduct.save
        format.html { redirect_to @myproduct, notice: 'Myproduct was successfully created.' }
        format.json { render :show, status: :created, location: @myproduct }
      else
        format.html { render :new }
        format.json { render json: @myproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myproducts/1
  # PATCH/PUT /myproducts/1.json
  def update
    respond_to do |format|
      if @myproduct.update(myproduct_params)
        format.html { redirect_to @myproduct, notice: 'Myproduct was successfully updated.' }
        format.json { render :show, status: :ok, location: @myproduct }
      else
        format.html { render :edit }
        format.json { render json: @myproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myproducts/1
  # DELETE /myproducts/1.json
  def destroy
    @myproduct.destroy
    respond_to do |format|
      format.html { redirect_to myproducts_url, notice: 'Myproduct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myproduct
      @myproduct = Myproduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myproduct_params
      params.require(:myproduct).permit(:title, :description, :image_url, :price, :bottle_size, :company, :country, :grape_type, :suit_vegetarian)
    end
end
