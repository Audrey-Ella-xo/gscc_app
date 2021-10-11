class SocietiesController < ApplicationController
  before_action :set_society, only: %i[ show edit update destroy ]

  # GET /societies or /societies.json
  def index
    @societies = Society.all
  end

  # GET /societies/1 or /societies/1.json
  def show
  end

  # GET /societies/new
  def new
    @society = Society.new
  end

  # GET /societies/1/edit
  def edit
  end

  # POST /societies or /societies.json
  def create
    @society = current_user.societies.build(society_params)

    respond_to do |format|
      if @society.save
        format.html { redirect_to @society, notice: "Society was successfully created." }
        format.json { render :show, status: :created, location: @society }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @society.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /societies/1 or /societies/1.json
  def update
    respond_to do |format|
      if @society.update(society_params)
        format.html { redirect_to @society, notice: "Society was successfully updated." }
        format.json { render :show, status: :ok, location: @society }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @society.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /societies/1 or /societies/1.json
  def destroy
    @society.destroy
    respond_to do |format|
      format.html { redirect_to societies_url, notice: "Society was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_society
      @society = Society.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def society_params
      params.require(:society).permit(:name, :meeting_day, :user_id)
    end
end
