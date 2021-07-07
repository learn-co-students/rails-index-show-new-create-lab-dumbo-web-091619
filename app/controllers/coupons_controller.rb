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
        @coupon = Coupon.create(cp_params)
        redirect_to coupon_path(@coupon)
    end

    private 

    def cp_params
        params.require(:coupon).permit(:coupon_code,:store)
    end
end
