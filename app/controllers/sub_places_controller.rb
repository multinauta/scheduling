class SubPlacesController < ApplicationController
  before_action :set_sub_place, only: %i[ show edit update destroy ]

  # GET /sub_places or /sub_places.json
  def index
    @sub_places = SubPlace.all
  end

  # GET /sub_places/1 or /sub_places/1.json
  def show
  end

  # GET /sub_places/new
  def new
    @sub_place = SubPlace.new
  end

  # GET /sub_places/1/edit
  def edit
  end

  # POST /sub_places or /sub_places.json
  def create
    @sub_place = SubPlace.new(sub_place_params)

    respond_to do |format|
      if @sub_place.save
        format.html { redirect_to sub_place_url(@sub_place), notice: "Sub place was successfully created." }
        format.json { render :show, status: :created, location: @sub_place }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sub_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_places/1 or /sub_places/1.json
  def update
    respond_to do |format|
      if @sub_place.update(sub_place_params)
        format.html { redirect_to sub_place_url(@sub_place), notice: "Sub place was successfully updated." }
        format.json { render :show, status: :ok, location: @sub_place }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sub_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_places/1 or /sub_places/1.json
  def destroy
    @sub_place.destroy

    respond_to do |format|
      format.html { redirect_to sub_places_url, notice: "Sub place was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_place
      @sub_place = SubPlace.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sub_place_params
      params.require(:sub_place).permit(:name, :place_id)
    end
end
