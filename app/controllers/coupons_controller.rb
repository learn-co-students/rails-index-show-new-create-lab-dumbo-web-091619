class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  def create
    # byebug
    @coupon = Coupon.create(coupon_par)
    redirect_to coupon_path(@coupon)
  end

private

  def coupon_par
    params.require(:coupon).permit(:coupon_code, :store)
  end

end
