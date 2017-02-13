class PhoneOrdersController < ApplicationController
  before_action :set_phone_order, only: [:show, :edit, :update, :destroy]

  # GET /phone_orders
  # GET /phone_orders.json
  def index
    @phone_orders = PhoneOrder.all
  end

  # GET /phone_orders/1
  # GET /phone_orders/1.json
  def show
  end

  # GET /phone_orders/new
  def new
    @phone_order = PhoneOrder.new
  end

  # GET /phone_orders/1/edit
  def edit
  end

  # POST /phone_orders
  # POST /phone_orders.json
  def create
    @phone_order = PhoneOrder.new(phone_order_params)

    respond_to do |format|
      if @phone_order.save
        OrderMailer.order_email(@phone_order).deliver_now
        format.html { redirect_to @phone_order, notice: 'Ваша заявка принята и поставлена в очередь на исполнение.' }
        format.json { render :show, status: :created, location: @phone_order }
      else
        format.html { render :new }
        format.json { render json: @phone_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_orders/1
  # PATCH/PUT /phone_orders/1.json
  def update
    respond_to do |format|
      if @phone_order.update(phone_order_params)
        format.html { redirect_to @phone_order, notice: 'Ваша заявка изменена и поставлена в очередь на исполнение.' }
        format.json { render :show, status: :ok, location: @phone_order }
      else
        format.html { render :edit }
        format.json { render json: @phone_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_orders/1
  # DELETE /phone_orders/1.json
  def destroy
    @phone_order.destroy
    respond_to do |format|
      format.html { redirect_to phone_orders_url, notice: 'Phone order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_order
      @phone_order = PhoneOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_order_params
      params.require(:phone_order).permit(:name, :phone)
    end
end
