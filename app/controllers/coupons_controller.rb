class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
    # binding.pry
  end

  def create
    @coupon = Coupon.new
    # binding.pry

    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.store = params[:coupon][:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def show
    # binding.pry
    @coupon = Coupon.find_by(id: params[:id])
  end

  def new
  end
end
