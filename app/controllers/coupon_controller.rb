def index 
  @coupons = Coupon.all 
end

def show 
  @coupon = Coupon.find(params[:id])
end

def new 

end

def create 
   @coupon = Coupon.create
   @coupon[:coupon_code] = params[:coupons][:coupon_code]
   @coupon.save
   redirect_to coupon_path(@coupon)
end