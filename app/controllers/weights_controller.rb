class WeightsController < ApplicationController
  def show
    weights = Weight.order(Weight[:measured_at].desc)

    render :show, locals: {weights: weights}
  end

  def create
    Weight.create(weight_params)

    redirect_to(:back)
  end

  private

  def weight_params
    params.require(:weight).permit(:value, :measured_at)
  end
end
