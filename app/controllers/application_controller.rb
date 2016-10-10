class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def create
    @phone_order = PhoneOrder.new(phone_order_params)

    respond_to do |format|
      if @phone_order.save
        format.html { redirect_to @phone_order, notice: 'Phone order was successfully created.' }
      else
        format.json { render json: @phone_order.errors, status: :unprocessable_entity }
      end
    end
  end
end

