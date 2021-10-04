class UmbrellaBodiesController < ApplicationController
  before_action :set_umbrella_body, only: %i[ show edit update destroy ]

  # GET /umbrella_bodies or /umbrella_bodies.json
  def index
    @umbrella_bodies = UmbrellaBody.all
  end

  # GET /umbrella_bodies/1 or /umbrella_bodies/1.json
  def show
  end

  # GET /umbrella_bodies/new
  def new
    @umbrella_body = UmbrellaBody.new
  end

  # GET /umbrella_bodies/1/edit
  def edit
  end

  # POST /umbrella_bodies or /umbrella_bodies.json
  def create
    @umbrella_body = UmbrellaBody.new(umbrella_body_params)

    respond_to do |format|
      if @umbrella_body.save
        format.html { redirect_to @umbrella_body, notice: "Umbrella body was successfully created." }
        format.json { render :show, status: :created, location: @umbrella_body }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @umbrella_body.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /umbrella_bodies/1 or /umbrella_bodies/1.json
  def update
    respond_to do |format|
      if @umbrella_body.update(umbrella_body_params)
        format.html { redirect_to @umbrella_body, notice: "Umbrella body was successfully updated." }
        format.json { render :show, status: :ok, location: @umbrella_body }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @umbrella_body.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /umbrella_bodies/1 or /umbrella_bodies/1.json
  def destroy
    @umbrella_body.destroy
    respond_to do |format|
      format.html { redirect_to umbrella_bodies_url, notice: "Umbrella body was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_umbrella_body
      @umbrella_body = UmbrellaBody.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def umbrella_body_params
      params.require(:umbrella_body).permit(:img, :aim, :executives, :meeting_day, :parton_saint)
    end
end
