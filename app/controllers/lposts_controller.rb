class LpostsController < ApplicationController
  before_action :set_lpost, only: [:show, :edit, :update, :destroy]

  # GET /lposts
  # GET /lposts.json
  def index
    @lposts = Lpost.all
  end

  # GET /lposts/1
  # GET /lposts/1.json
  def show
  end

  # GET /lposts/new
  def new
    @lpost = Lpost.new
  end

  # GET /lposts/1/edit
  def edit
  end

  # POST /lposts
  # POST /lposts.json
  def create
    @lpost = Lpost.new(lpost_params)

    respond_to do |format|
      if @lpost.save
        format.html { redirect_to @lpost, notice: 'Lpost was successfully created.' }
        format.json { render :show, status: :created, location: @lpost }
      else
        format.html { render :new }
        format.json { render json: @lpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lposts/1
  # PATCH/PUT /lposts/1.json
  def update
    respond_to do |format|
      if @lpost.update(lpost_params)
        format.html { redirect_to @lpost, notice: 'Lpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @lpost }
      else
        format.html { render :edit }
        format.json { render json: @lpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lposts/1
  # DELETE /lposts/1.json
  def destroy
    @lpost.destroy
    respond_to do |format|
      format.html { redirect_to lposts_url, notice: 'Lpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lpost
      @lpost = Lpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lpost_params
      params.require(:lpost).permit(:tittle, :description, :location, :Contact, :cover)
    end
end
