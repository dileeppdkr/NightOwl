class RattingsController < ApplicationController
  before_action :set_ratting, only: [:show, :edit, :update, :destroy]

  # GET /rattings
  # GET /rattings.json
  def index
    @rattings = Ratting.all
  end

  # GET /rattings/1
  # GET /rattings/1.json
  def show
  end

  # GET /rattings/new
  def new
    @ratting = Ratting.new
  end

  # GET /rattings/1/edit
  def edit
  end

  # POST /rattings
  # POST /rattings.json
  def create
    @ratting = Ratting.new(ratting_params)

    respond_to do |format|
      if @ratting.save
        format.html { redirect_to @ratting, notice: 'Ratting was successfully created.' }
        format.json { render :show, status: :created, location: @ratting }
      else
        format.html { render :new }
        format.json { render json: @ratting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rattings/1
  # PATCH/PUT /rattings/1.json
  def update
    respond_to do |format|
      if @ratting.update(ratting_params)
        format.html { redirect_to @ratting, notice: 'Ratting was successfully updated.' }
        format.json { render :show, status: :ok, location: @ratting }
      else
        format.html { render :edit }
        format.json { render json: @ratting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rattings/1
  # DELETE /rattings/1.json
  def destroy
    @ratting.destroy
    respond_to do |format|
      format.html { redirect_to rattings_url, notice: 'Ratting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ratting
      @ratting = Ratting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ratting_params
      params.require(:ratting).permit(:user_id, :ratting, :shop_id)
    end
end
