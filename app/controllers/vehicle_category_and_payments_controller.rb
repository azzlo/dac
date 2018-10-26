class VehicleCategoryAndPaymentsController < ApplicationController
  before_action :set_vehicle_category_and_payment, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_category_and_payments
  # GET /vehicle_category_and_payments.json
  def index
    @vehicle_category_and_payments = VehicleCategoryAndPayment.all
  end

  # GET /vehicle_category_and_payments/1
  # GET /vehicle_category_and_payments/1.json
  def show
  end

  # GET /vehicle_category_and_payments/new
  def new
    @vehicle_category_and_payment = VehicleCategoryAndPayment.new
  end

  # GET /vehicle_category_and_payments/1/edit
  def edit
  end

  # POST /vehicle_category_and_payments
  # POST /vehicle_category_and_payments.json
  def create
    @vehicle_category_and_payment = VehicleCategoryAndPayment.new(vehicle_category_and_payment_params)

    respond_to do |format|
      if @vehicle_category_and_payment.save
        format.html { redirect_to @vehicle_category_and_payment, notice: 'Vehicle category and payment was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_category_and_payment }
      else
        format.html { render :new }
        format.json { render json: @vehicle_category_and_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_category_and_payments/1
  # PATCH/PUT /vehicle_category_and_payments/1.json
  def update
    respond_to do |format|
      if @vehicle_category_and_payment.update(vehicle_category_and_payment_params)
        format.html { redirect_to @vehicle_category_and_payment, notice: 'Vehicle category and payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_category_and_payment }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_category_and_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_category_and_payments/1
  # DELETE /vehicle_category_and_payments/1.json
  def destroy
    @vehicle_category_and_payment.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_category_and_payments_url, notice: 'Vehicle category and payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_category_and_payment
      @vehicle_category_and_payment = VehicleCategoryAndPayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_category_and_payment_params
      params.require(:vehicle_category_and_payment).permit(:category, :payment_per_km, :payment_per_return_km)
    end
end
