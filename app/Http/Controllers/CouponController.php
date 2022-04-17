<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Coupon;

class CouponController extends Controller
{
    public function viewPage(){

        $coupons = Coupon::orderBy('id','desc')->get();
        return view('backend.coupon_page',compact('coupons'));
    }
    public function addCoupon(Request $request){
        Coupon::insert([
            'coupon_code'     => $request->coupon_code,
            'coupon_discount' => $request->coupon_discount,
        ]);
        return back();
    }
    public function deleteCoupon($id){
        Coupon::findOrFail($id)->delete();
        return back();
    }
}
