class StaticController < ApplicationController
  before_action :set_phone_order, only: [:show, :edit, :update, :destroy]
  def index
    @phone_order = PhoneOrder.new
  end

  def delivery
    @phone_order = PhoneOrder.new
  end

  def payment
    @phone_order = PhoneOrder.new
  end

  def about
    @phone_order = PhoneOrder.new
  end

  def create
    @phone_order = PhoneOrder.new(phone_order_params)

    respond_to do |format|
      if @phone_order.save
        format.html { redirect_to @phone_order, notice: 'Заявка успешно добавлена' }
      else
        format.json { render json: @phone_order.errors, status: :unprocessable_entity }
      end
    end
  end

end
