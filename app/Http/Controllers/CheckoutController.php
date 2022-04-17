<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Shipping;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;
use App\Sale;
use App\Billing;
use App\Cart;

use App\Mail\OrderMail;
use Illuminate\Support\Facades\Mail;

class CheckoutController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function viewCheckoutPage(){
        $divisions = DB::table('divisions')->get();
        return view('frontend.checkout',compact('divisions'));
    }
    public function getDistrict($id){

        $district = DB::table('districts')
                        ->where('division_id',$id)
                        ->get();
        return response()->json($district);
    }
    public function getArea($id){
        $area = DB::table('upazilas')
                    ->where('district_id',$id)
                    ->get();
        return response()->json($area);
    }
    public function placeOrder(Request $request){

        $shipping_id = Shipping::insertGetId([
            'name'        => $request->name,
            'email'       => $request->email,
            'user_id'     => Auth::user()->id,
            'phone'       => $request->phone,
            'division_id' => $request->division_id,
            'district_id' => $request->district_id,
            'area_id'     => $request->area_id,
            'address'     => $request->address,
            'postal_code' => $request->postal_code,
            'created_at'  => Carbon::now()
        ]);

        $total = session('total');

        $sale_id = Sale::insertGetId([
            'user_id'      => Auth::user()->id,
            'shipping_id'  => $shipping_id,
            'grand_total'  => $total,
            'payment_type' => 0,
            'payment_status'=>0,
            'order_status'  =>0,
            'created_at'   => Carbon::now(),
        ]);

        session(['sale_id' => $sale_id]); //putting sell id in session to send email to the user in stripePaymentController
        $customer_ip = $_SERVER['REMOTE_ADDR'];

        $carts = DB::table('carts')
                    ->where('customer_ip', $_SERVER['REMOTE_ADDR'])
                    ->get();

        foreach($carts as $cart){
            Billing::insert([
                'sale_id'    => $sale_id,
                'user_id'    => Auth::user()->id,
                'name'       => $cart->name,
                'price'      => $cart->price*$cart->quantity,
                'quantity'   => $cart->quantity,
                'created_at' => Carbon::now(),
            ]);
            Cart::where('id',$cart->id)->delete();
        }

        session()->forget('discount');

        $order_info = Shipping::where('id',$shipping_id)->first();

        return view('frontend.payment',compact('total','order_info'));

    }
    public function cashOnDelivery(){
        $sale_id = session('sale_id');

        $data = DB::table('billings')
                    ->where('sale_id', $sale_id)
                    ->get();

        $email = Auth::user()->email;
        Mail::to($email)->send(new OrderMail($data));

        Sale::where('id',$sale_id)->update([
            'payment_status' => 0,
            'payment_type'   => 'Cash On Delivery',
        ]);

        return view('frontend.order-complete');
    }

}
