class MassBookingsController < ApplicationController
  before_action :set_mass_booking, only: %i[ show edit update destroy ]

  # GET /mass_bookings or /mass_bookings.json
  def index
    @mass_bookings = MassBooking.all
  end

  # GET /mass_bookings/1 or /mass_bookings/1.json
  def show
  end

  # GET /mass_bookings/new
  def new
    @mass_booking = MassBooking.new
  end

  # GET /mass_bookings/1/edit
  def edit
  end

  # POST /mass_bookings or /mass_bookings.json
  def create
    @mass_booking = MassBooking.new(mass_booking_params)

    respond_to do |format|
      if @mass_booking.save
        format.html { redirect_to @mass_booking, notice: "Mass booking was successfully created." }
        format.json { render :show, status: :created, location: @mass_booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mass_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mass_bookings/1 or /mass_bookings/1.json
  def update
    respond_to do |format|
      if @mass_booking.update(mass_booking_params)
        format.html { redirect_to @mass_booking, notice: "Mass booking was successfully updated." }
        format.json { render :show, status: :ok, location: @mass_booking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mass_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mass_bookings/1 or /mass_bookings/1.json
  def destroy
    @mass_booking.destroy
    respond_to do |format|
      format.html { redirect_to mass_bookings_url, notice: "Mass booking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mass_booking
      @mass_booking = MassBooking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mass_booking_params
      params.require(:mass_booking).permit(:booking_type, :location, :purpose, :duration, :starts_at, :ends_at)
    end
end
