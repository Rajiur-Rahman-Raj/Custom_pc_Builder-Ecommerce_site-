<?php

namespace App\Http\Controllers;
use App\Processor;
use App\Cart;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class CustomController extends Controller
{
    public function customPage(){
        if(Cart::where('customer_ip',$_SERVER['REMOTE_ADDR'])->exists()){
            $msg = "For better accuracy please clear your cart first. Remove all your cart product";
            $products = Processor::all();
            $name = "Processors";
            $url = "add/processor/to/custom/cart";
            return view('frontend.custom',compact('products','name','msg','url'));
        }
        else{
            $products = Processor::all();
            $name = "Processors";
            $url = "add/processor/to/custom/cart";
            return view('frontend.custom',compact('products','name','url'));
        }

    }
    public function addProcessorToCustomCart($name,$price){

        $ip_address = $_SERVER['REMOTE_ADDR'];

        Cart::insert([
            'customer_ip' => $ip_address,
            'name'        => $name,
            'price'       => $price,
            'quantity'    => 1,
        ]);

        $processor = DB::table('processors')->where('name',$name)->first();

        $msg = "Your Processor Has Added, Now select Your MotherBoard";
        $products = DB::table('mother_boards')->where('socket',$processor->socket)->get();

        $name = "motherBoards";
        $url = "add/motherboards/to/custom/cart";
        return view('frontend.custom',compact('products','name','url','msg'));

    }
    public function addMoboToCustomCart($name,$price){
        $ip_address = $_SERVER['REMOTE_ADDR'];
        Cart::insert([
            'customer_ip' => $ip_address,
            'name'        => $name,
            'price'       => $price,
            'quantity'    => 1,
        ]);

        $mother_board = DB::table('mother_boards')->where('name',$name)->first();
        $msg = "Your MotherBoard Has Added, Now select Your Ram";

        $products = DB::table('rams')->where('ram_type',$mother_board->ram_type)->get();

        $name = "RAM";
        $url = "add/ram/to/custom/cart";
        return view('frontend.custom',compact('products','name','url','msg'));
    }
    public function addRamToCustomCart($name,$price){
        $ip_address = $_SERVER['REMOTE_ADDR'];
        Cart::insert([
            'customer_ip' => $ip_address,
            'name'        => $name,
            'price'       => $price,
            'quantity'    => 1,
        ]);

        $cart_product = Cart::where('customer_ip',$ip_address)->get();

        $mobo_name = $cart_product[1]->name;

        $mobo_details = DB::table('mother_boards')->where('name',$mobo_name)->first();

        if($mobo_details->storage_type == 3){
            $msg = "Your Ram Has Added, Now select Your Storage";
            $name = "Storage";
            $url = "add/storage/to/custom/cart";

            $products = DB::table('storages')->get();

            return view('frontend.custom',compact('products','name','url','msg'));
        }
        elseif($mobo_details->storage_type == 2){
            $msg = "Your Ram Has Added, Now select Your Storage";
            $name = "Storage";
            $url = "add/storage/to/custom/cart";

            $products = DB::table('storages')->where('storage_type','!=',3)->get();

            return view('frontend.custom',compact('products','name','url','msg'));
        }
        else{
            $msg = "Your Ram Has Added, Now select Your Storage";
            $name = "Storage";
            $url = "add/storage/to/custom/cart";

            $products = DB::table('storages')->where('storage_type',1)->get();

            return view('frontend.custom',compact('products','name','url','msg'));
        }

    }
    public function addStorageToCustomCart($name,$price){
        $ip_address = $_SERVER['REMOTE_ADDR'];
        Cart::insert([
            'customer_ip' => $ip_address,
            'name'        => $name,
            'price'       => $price,
            'quantity'    => 1,
        ]);

        $cart_product = Cart::where('customer_ip',$ip_address)->get();

        $processor_name = $cart_product[0]->name;

        $processor_details = DB::table('processors')->where('name',$processor_name)->first();

        if($processor_details->graphics == null){
            $msg = "Your Storage has Added, Now select Your Graphics Card";
            $name = "Graphics Card";
            $url = "add/graphics/to/custom/cart";

            $products = DB::table('graphics_cards')->get();

            return view('frontend.custom',compact('products','name','url','msg'));
        }
        else{
            $msg = "Your Storage has Added, Now select Your Casing";
            $name = "Casing with PSU";
            $url = "add/casing/psu/to/custom/cart";

            $products = DB::table('casings')->where('subcategory_id',16)->get();

            return view('frontend.custom',compact('products','name','url','msg'));
        }

    }
    public function addGraphicsToCustomCart($name,$price){
        $ip_address = $_SERVER['REMOTE_ADDR'];
        Cart::insert([
            'customer_ip' => $ip_address,
            'name'        => $name,
            'price'       => $price,
            'quantity'    => 1,
        ]);

        $msg = "Your Graphics Card has Added, Now select Your Casing";
        $name = "Casing without PSU";
        $url = "add/casing/to/custom/cart";

        $products = DB::table('casings')->where('subcategory_id',17)->get();

        return view('frontend.custom',compact('products','name','url','msg'));
    }
    public function addCasingPSUToCustomCart($name,$price){
        $ip_address = $_SERVER['REMOTE_ADDR'];
        Cart::insert([
            'customer_ip' => $ip_address,
            'name'        => $name,
            'price'       => $price,
            'quantity'    => 1,
        ]);
        return redirect()->route('ViewCart');
    }
    public function addCasingToCustomCart($name,$price){
        $ip_address = $_SERVER['REMOTE_ADDR'];
        Cart::insert([
            'customer_ip' => $ip_address,
            'name'        => $name,
            'price'       => $price,
            'quantity'    => 1,
        ]);

        $msg = "Your Casing has Added, Now select Your PSU";
        $name = "Power Supply Unit";
        $url = "add/psu/to/custom/cart";

        $products = DB::table('power_supplies')->get();
        return view('frontend.custom',compact('products','name','url','msg'));
    }
    public function addPSUToCustomCart($name,$price){
        $ip_address = $_SERVER['REMOTE_ADDR'];
        Cart::insert([
            'customer_ip' => $ip_address,
            'name'        => $name,
            'price'       => $price,
            'quantity'    => 1,
        ]);
        return redirect()->route('ViewCart');
    }
}
