class CouponsController < ApplicationController
    before_action :set_coupon, only:[:show]
    def index
        @coupons = Coupon.all
    end

    def new
        @coupon = Coupon.new
    end

    def create
        @coupon = Coupon.create(coupon_params)
        redirect_to @coupon
    end

    private

    def coupon_params
        params.require(:coupon).permit(:coupon_code, :store)
    end

    def set_coupon
        @coupon = Coupon.find(params[:id])
    end
end