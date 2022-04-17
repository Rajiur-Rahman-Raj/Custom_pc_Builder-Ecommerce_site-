<?php

namespace App\Http\Controllers;
use App\Sale;
use App\User;
use App\Shipping;
use App\Billing;
use PDF;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Mail\OrderApproveMail;
use App\Mail\OrderCancelMail;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class OrderController extends Controller
{
    public function pendingListView(){
        $orders = DB::table('sales')
                    ->join('users','sales.user_id','=','users.id')
                    ->select('sales.*','users.name as user_name')
                    ->where('order_status',0)
                    ->get();

        return view('backend.pending_lists',compact('orders'));
    }
    public function generatePDF($id){

        $sale_id = $id;

        $order_info = DB::table('billings')->where('sale_id',$id)->get();

        $shipping_id = Sale::where('id',$id)->first();

        $shipping_address = DB::table('shippings')
                                ->join('divisions','shippings.division_id','=','divisions.id')
                                ->join('districts','shippings.district_id','=','districts.id')
                                ->join('upazilas','shippings.area_id','=','upazilas.id')
                                ->select('shippings.*','divisions.name as division_name','districts.name as district_name','upazilas.name as area_name')
                                ->where('shippings.id',$shipping_id->shipping_id)
                                ->first();

        $pdf = PDF::loadView('backend.invoice',compact('order_info','shipping_address','sale_id'));
        return $pdf->download('invoice.pdf');

    }
    public function approveOrder($id){
        $sale_id = $id;
        Sale::where('id',$sale_id)->update([
            'order_status' => 1,
        ]);

        $user_info = Sale::where('id',$sale_id)->first();
        $user = User::where('id',$user_info->user_id)->first();
        $data = "Your Order Has been approved.";

        Mail::to($user->email)->send(new OrderApproveMail($data));
        return back()->with('approveMsg','One Order Has been approved');
    }
    public function deleteOrder($id){
        $sale_id = $id;
        $shipping = Sale::where('id',$id)->first();
        $shipping->shipping_id;

        Sale::where('id',$id)->delete();
        Shipping::where('id',$shipping->shipping_id)->delete();
        Billing::where('sale_id',$id)->delete();

        $data = "Your Order Has been canceled.";

        $user = User::where('id',$shipping->user_id)->first();
        Mail::to($user->email)->send(new OrderCancelMail($data));

        return back()->with('approveMsg','One Order Has been deleted');
    }

    public function approveListView(){
        $orders = DB::table('sales')
                    ->join('users','sales.user_id','=','users.id')
                    ->select('sales.*','users.name as user_name')
                    ->where('order_status',1)
                    ->where('payment_status',0)
                    ->get();

        return view('backend.approve_lists',compact('orders'));
    }
    public function completeOrder($id){
        $sale_id = $id;
        Sale::where('id',$sale_id)->update([
            'payment_status' => 1,
        ]);

        return back()->with('approveMsg','One Order Has been Completed');
    }
}
