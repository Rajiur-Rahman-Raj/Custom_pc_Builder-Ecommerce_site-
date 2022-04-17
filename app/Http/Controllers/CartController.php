<?php

namespace App\Http\Controllers;
use App\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Coupon;
use App\Processor;
use App\MotherBoard;
use App\Casing;
use App\GraphicsCard;
use App\PowerSupply;
use App\Ram;
use App\Storage;
use App\Others;

class CartController extends Controller
{
    public function viewCartPage(){

        $processor = DB::table('processors')
        ->join('categories','processors.category_id','=','categories.id')
        ->select('processors.*','categories.category_name as category_name')
        ->orderBy('id','desc')
        ->first();

        $motherboard = DB::table('mother_boards')
        ->join('categories','mother_boards.category_id','=','categories.id')
        ->select('mother_boards.*','categories.category_name as category_name')
        ->orderBy('id','desc')
        ->first();

        $ram = DB::table('rams')
                ->join('categories','rams.category_id','=','categories.id')
                ->select('rams.*','categories.category_name as category_name')
                ->orderBy('id','desc')
                ->first();

        $graphics_card = DB::table('graphics_cards')
                    ->join('categories','graphics_cards.category_id','=','categories.id')
                    ->select('graphics_cards.*','categories.category_name as category_name')
                    ->orderBy('id','desc')
                    ->first();

        $discount = session('discount');
        $subtotal = 0;
        $delivery = 60;

        $ip_address = $_SERVER['REMOTE_ADDR'];
        $items = DB::table('carts')
                    ->where('customer_ip', $ip_address)
                    ->get();

        foreach ($items as $item) {
            $subtotal = $subtotal+($item->price * $item->quantity);
        }
        $total = $subtotal-($subtotal*$discount/100)+$delivery;

        session(['subtotal' => $subtotal]);
        session(['total' => $total]);
        session(['discount' => $discount]);

        return view('frontend.cart',compact('items','processor','motherboard','ram','graphics_card','discount','subtotal','total','delivery'));
    }

    public function applyCoupon(Request $request){
        $value = $request->code;
        $amount = 0;

        if(Coupon::where('coupon_code',$value)->exists()){
            $amount = Coupon::where('coupon_code',$value)->first();
            session(['discount' => $amount->coupon_discount]);
        }
        else{
            session(['discount' => 0]);
        }
        return back();
    }

    public function addToCart($name,$price){
        $ip_address = $_SERVER['REMOTE_ADDR'];

        if(Cart::where('name',$name)->where('price', $price)->where('customer_ip', $ip_address)->exists()){
            Cart::where('name',$name)->where('price', $price)->where('customer_ip', $ip_address)->increment('quantity');
        }
        else{
            Cart::insert([
                'customer_ip' => $ip_address,
                'name'        => $name,
                'price'       => $price,
                'quantity'    => 1,
            ]);
        }
        return back();
    }

    public function addToCartDeduct($name,$price,$category_id){
        if($category_id == 8){
            Processor::where('name',$name)->where('price',$price)->decrement('stock',1);
        }
        if($category_id == 9){
            MotherBoard::where('name',$name)->where('price',$price)->decrement('stock',1);
        }
        if($category_id == 15){
            Ram::where('name',$name)->where('price',$price)->decrement('stock',1);
        }
        if($category_id == 16){
            Storage::where('name',$name)->where('price',$price)->decrement('stock',1);
        }
        if($category_id == 17){
            Casing::where('name',$name)->where('price',$price)->decrement('stock',1);
        }
        if($category_id == 18){
            PowerSupply::where('name',$name)->where('price',$price)->decrement('stock',1);
        }
        if($category_id == 19){
            GraphicsCard::where('name',$name)->where('price',$price)->decrement('stock',1);
        }
        if($category_id == 20){
            Others::where('name',$name)->where('price',$price)->decrement('stock',1);
        }

        $ip_address = $_SERVER['REMOTE_ADDR'];

        if(Cart::where('name',$name)->where('price', $price)->where('customer_ip', $ip_address)->exists()){
            Cart::where('name',$name)->where('price', $price)->where('customer_ip', $ip_address)->increment('quantity');
        }
        else{
            Cart::insert([
                'customer_ip' => $ip_address,
                'name'        => $name,
                'price'       => $price,
                'quantity'    => 1,
            ]);
        }
        return back();
    }

    public function addToCartPost(Request $request){
        $ip_address = $_SERVER['REMOTE_ADDR'];

        if($request->category_id == 8){

            $stock = Processor::where('name',$request->name)->where('price',$request->price)->first();

            if($stock->stock > $request->quantity){
                if(Cart::where('name',$request->name)->where('price', $request->price)->where('customer_ip', $ip_address)->exists()){
                    Cart::where('name',$request->name)->where('price', $request->price)->where('customer_ip', $ip_address)->increment('quantity',$request->quantity);
                }
                else{
                    Cart::insert([
                        'customer_ip' => $ip_address,
                        'name'        => $request->name,
                        'price'       => $request->price,
                        'quantity'    => $request->quantity,
                    ]);
                }

                Processor::where('name',$request->name)->where('price',$request->price)->decrement('stock',$request->quantity);
                return back();
            }
            else{
                return back()->with('StockMsg','Sorry Sir, You are exceeding stock limit');
            }

        }

        if($request->category_id == 9){

            $stock = MotherBoard::where('name',$request->name)->where('price',$request->price)->first();

            if($stock->stock > $request->quantity){
                if(Cart::where('name',$request->name)->where('price', $request->price)->where('customer_ip', $ip_address)->exists()){
                    Cart::where('name',$request->name)->where('price', $request->price)->where('customer_ip', $ip_address)->increment('quantity',$request->quantity);
                }
                else{
                    Cart::insert([
                        'customer_ip' => $ip_address,
                        'name'        => $request->name,
                        'price'       => $request->price,
                        'quantity'    => $request->quantity,
                    ]);
                }

                MotherBoard::where('name',$request->name)->where('price',$request->price)->decrement('stock',$request->quantity);
                return back();
            }
            else{
                return back()->with('StockMsg','Sorry Sir, You are exceeding stock limit');
            }

        }

        if($request->category_id == 15){

            $stock = Ram::where('name',$request->name)->where('price',$request->price)->first();

            if($stock->stock > $request->quantity){
                if(Cart::where('name',$request->name)->where('price', $request->price)->where('customer_ip', $ip_address)->exists()){
                    Cart::where('name',$request->name)->where('price', $request->price)->where('customer_ip', $ip_address)->increment('quantity',$request->quantity);
                }
                else{
                    Cart::insert([
                        'customer_ip' => $ip_address,
                        'name'        => $request->name,
                        'price'       => $request->price,
                        'quantity'    => $request->quantity,
                    ]);
                }

                Ram::where('name',$request->name)->where('price',$request->price)->decrement('stock',$request->quantity);
                return back();
            }
            else{
                return back()->with('StockMsg','Sorry Sir, You are exceeding stock limit');
            }

        }

        if($request->category_id == 16){

            $stock = Storage::where('name',$request->name)->where('price',$request->price)->first();

            if($stock->stock > $request->quantity){
                if(Cart::where('name',$request->name)->where('price', $request->price)->where('customer_ip', $ip_address)->exists()){
                    Cart::where('name',$request->name)->where('price', $request->price)->where('customer_ip', $ip_address)->increment('quantity',$request->quantity);
                }
                else{
                    Cart::insert([
                        'customer_ip' => $ip_address,
                        'name'        => $request->name,
                        'price'       => $request->price,
                        'quantity'    => $request->quantity,
                    ]);
                }

                Storage::where('name',$request->name)->where('price',$request->price)->decrement('stock',$request->quantity);
                return back();
            }
            else{
                return back()->with('StockMsg','Sorry Sir, You are exceeding stock limit');
            }

        }

        if($request->category_id == 17){

            $stock = Casing::where('name',$request->name)->where('price',$request->price)->first();

            if($stock->stock > $request->quantity){
                if(Cart::where('name',$request->name)->where('price', $request->price)->where('customer_ip', $ip_address)->exists()){
                    Cart::where('name',$request->name)->where('price', $request->price)->where('customer_ip', $ip_address)->increment('quantity',$request->quantity);
                }
                else{
                    Cart::insert([
                        'customer_ip' => $ip_address,
                        'name'        => $request->name,
                        'price'       => $request->price,
                        'quantity'    => $request->quantity,
                    ]);
                }

                Casing::where('name',$request->name)->where('price',$request->price)->decrement('stock',$request->quantity);
                return back();
            }
            else{
                return back()->with('StockMsg','Sorry Sir, You are exceeding stock limit');
            }

        }

        if($request->category_id == 18){

            $stock = PowerSupply::where('name',$request->name)->where('price',$request->price)->first();

            if($stock->stock > $request->quantity){
                if(Cart::where('name',$request->name)->where('price', $request->price)->where('customer_ip', $ip_address)->exists()){
                    Cart::where('name',$request->name)->where('price', $request->price)->where('customer_ip', $ip_address)->increment('quantity',$request->quantity);
                }
                else{
                    Cart::insert([
                        'customer_ip' => $ip_address,
                        'name'        => $request->name,
                        'price'       => $request->price,
                        'quantity'    => $request->quantity,
                    ]);
                }

                PowerSupply::where('name',$request->name)->where('price',$request->price)->decrement('stock',$request->quantity);
                return back();
            }
            else{
                return back()->with('StockMsg','Sorry Sir, You are exceeding stock limit');
            }

        }

        if($request->category_id == 19){

            $stock = GraphicsCard::where('name',$request->name)->where('price',$request->price)->first();

            if($stock->stock > $request->quantity){
                if(Cart::where('name',$request->name)->where('price', $request->price)->where('customer_ip', $ip_address)->exists()){
                    Cart::where('name',$request->name)->where('price', $request->price)->where('customer_ip', $ip_address)->increment('quantity',$request->quantity);
                }
                else{
                    Cart::insert([
                        'customer_ip' => $ip_address,
                        'name'        => $request->name,
                        'price'       => $request->price,
                        'quantity'    => $request->quantity,
                    ]);
                }

                GraphicsCard::where('name',$request->name)->where('price',$request->price)->decrement('stock',$request->quantity);
                return back();
            }
            else{
                return back()->with('StockMsg','Sorry Sir, You are exceeding stock limit');
            }

        }

        if($request->category_id == 20){

            $stock = Others::where('name',$request->name)->where('price',$request->price)->first();

            if($stock->stock > $request->quantity){
                if(Cart::where('name',$request->name)->where('price', $request->price)->where('customer_ip', $ip_address)->exists()){
                    Cart::where('name',$request->name)->where('price', $request->price)->where('customer_ip', $ip_address)->increment('quantity',$request->quantity);
                }
                else{
                    Cart::insert([
                        'customer_ip' => $ip_address,
                        'name'        => $request->name,
                        'price'       => $request->price,
                        'quantity'    => $request->quantity,
                    ]);
                }

                Others::where('name',$request->name)->where('price',$request->price)->decrement('stock',$request->quantity);
                return back();
            }
            else{
                return back()->with('StockMsg','Sorry Sir, You are exceeding stock limit');
            }

        }


    }

    public function deleteCartItem($id){

        $data = Cart::where('id',$id)->first();

        if(Processor::where('name',$data->name)->where('price',$data->price)->exists()){
            Processor::where('name',$data->name)->where('price',$data->price)->increment('stock',$data->quantity);
        }

        if(MotherBoard::where('name',$data->name)->where('price',$data->price)->exists()){
            MotherBoard::where('name',$data->name)->where('price',$data->price)->increment('stock',$data->quantity);
        }

        if(Casing::where('name',$data->name)->where('price',$data->price)->exists()){
            Casing::where('name',$data->name)->where('price',$data->price)->increment('stock',$data->quantity);
        }

        if(GraphicsCard::where('name',$data->name)->where('price',$data->price)->exists()){
            GraphicsCard::where('name',$data->name)->where('price',$data->price)->increment('stock',$data->quantity);
        }

        if(PowerSupply::where('name',$data->name)->where('price',$data->price)->exists()){
            PowerSupply::where('name',$data->name)->where('price',$data->price)->increment('stock',$data->quantity);
        }

        if(Ram::where('name',$data->name)->where('price',$data->price)->exists()){
            Ram::where('name',$data->name)->where('price',$data->price)->increment('stock',$data->quantity);
        }

        if(Storage::where('name',$data->name)->where('price',$data->price)->exists()){
            Storage::where('name',$data->name)->where('price',$data->price)->increment('stock',$data->quantity);
        }

        if(Others::where('name',$data->name)->where('price',$data->price)->exists()){
            Others::where('name',$data->name)->where('price',$data->price)->increment('stock',$data->quantity);
        }

        Cart::findOrFail($id)->delete();
        return back();
    }
}
