<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Processor;
use App\MotherBoard;
use App\Category;
use App\Coupon;

use Illuminate\Http\Request;

class FrontEndController extends Controller
{
    public function index(){

        $coupon = Coupon::orderBy('id','desc')->first();

        $processor = DB::table('processors')
                        ->join('categories','processors.category_id','=','categories.id')
                        ->select('processors.*','categories.category_name as category_name')
                        ->orderBy('id','desc')
                        ->first();

        $processors = DB::table('processors')
                            ->join('categories','processors.category_id','=','categories.id')
                            ->select('processors.*','categories.category_name as category_name')
                            ->orderBy('id','desc')
                            ->skip(1)
                            ->limit(4)
                            ->get();

        $motherboard = DB::table('mother_boards')
                        ->join('categories','mother_boards.category_id','=','categories.id')
                        ->select('mother_boards.*','categories.category_name as category_name')
                        ->orderBy('id','desc')
                        ->first();

        $motherboards = DB::table('mother_boards')
                            ->join('categories','mother_boards.category_id','=','categories.id')
                            ->select('mother_boards.*','categories.category_name as category_name')
                            ->orderBy('id','desc')
                            ->skip(1)
                            ->limit(4)
                            ->get();

        $ram = DB::table('rams')
                ->join('categories','rams.category_id','=','categories.id')
                ->select('rams.*','categories.category_name as category_name')
                ->orderBy('id','desc')
                ->first();

        $rams = DB::table('rams')
                ->join('categories','rams.category_id','=','categories.id')
                ->select('rams.*','categories.category_name as category_name')
                ->orderBy('id','desc')
                ->skip(1)
                ->limit(4)
                ->get();

        $casing = DB::table('casings')
                    ->join('categories','casings.category_id','=','categories.id')
                    ->select('casings.*','categories.category_name as category_name')
                    ->orderBy('id','desc')
                    ->first();

        $casings = DB::table('casings')
                    ->join('categories','casings.category_id','=','categories.id')
                    ->select('casings.*','categories.category_name as category_name')
                    ->orderBy('id','desc')
                    ->skip(1)
                    ->limit(4)
                    ->get();

        $graphics_card = DB::table('graphics_cards')
                            ->join('categories','graphics_cards.category_id','=','categories.id')
                            ->select('graphics_cards.*','categories.category_name as category_name')
                            ->orderBy('id','desc')
                            ->first();

        $graphics_cards = DB::table('graphics_cards')
                            ->join('categories','graphics_cards.category_id','=','categories.id')
                            ->select('graphics_cards.*','categories.category_name as category_name')
                            ->orderBy('id','desc')
                            ->skip(1)
                            ->limit(4)
                            ->get();

        $power_supply = DB::table('power_supplies')
                            ->join('categories','power_supplies.category_id','=','categories.id')
                            ->select('power_supplies.*','categories.category_name as category_name')
                            ->orderBy('id','desc')
                            ->first();

        $power_supplies = DB::table('power_supplies')
                            ->join('categories','power_supplies.category_id','=','categories.id')
                            ->select('power_supplies.*','categories.category_name as category_name')
                            ->orderBy('id','desc')
                            ->skip(1)
                            ->limit(4)
                            ->get();

        $storage = DB::table('storages')
                            ->join('categories','storages.category_id','=','categories.id')
                            ->select('storages.*','categories.category_name as category_name')
                            ->orderBy('id','desc')
                            ->first();

        $storages = DB::table('storages')
                            ->join('categories','storages.category_id','=','categories.id')
                            ->select('storages.*','categories.category_name as category_name')
                            ->orderBy('id','desc')
                            ->skip(1)
                            ->limit(4)
                            ->get();

        $product = DB::table('others')
                            ->join('categories','others.category_id','=','categories.id')
                            ->join('sub_categories','others.subcategory_id','=','sub_categories.id')
                            ->select('others.*','sub_categories.subcategory_name')
                            ->orderBy('id','desc')
                            ->first();

        $products = DB::table('others')
                            ->join('categories','others.category_id','=','categories.id')
                            ->join('sub_categories','others.subcategory_id','=','sub_categories.id')
                            ->select('others.*','sub_categories.subcategory_name')
                            ->orderBy('id','desc')
                            ->skip(1)
                            ->limit(4)
                            ->get();

        return view('frontend.index',compact('coupon','processor','processors','motherboard','motherboards','ram','rams','casing','casings','graphics_card','graphics_cards','power_supply','power_supplies','storage','storages','product','products'));
    }
    public function processorDetails($id){
        $details = DB::table('processors')->where('id',$id)->first();
        $similar_products = DB::table('processors')
                                ->join('categories','processors.category_id','=','categories.id')
                                ->select('processors.*','categories.category_name as category_name')
                                ->skip('id',$id)->limit(4)->orderBy('id','desc')->get();

        return view('frontend.product_details',compact('details','similar_products'));
    }
    public function motherboardDetails($id){
        $details = DB::table('mother_boards')->where('id',$id)->first();
        $similar_products = DB::table('mother_boards')
                                ->join('categories','mother_boards.category_id','=','categories.id')
                                ->select('mother_boards.*','categories.category_name as category_name')
                                ->skip('id',$id)->limit(4)->orderBy('id','desc')->get();

        return view('frontend.product_details',compact('details','similar_products'));
    }
    public function ramDetails($id){
        $details = DB::table('rams')->where('id',$id)->first();
        $similar_products = DB::table('rams')
                                ->join('categories','rams.category_id','=','categories.id')
                                ->select('rams.*','categories.category_name as category_name')
                                ->skip('id',$id)->limit(4)->orderBy('id','desc')->get();

        return view('frontend.product_details',compact('details','similar_products'));
    }
    public function casingDetails($id){
        $details = DB::table('casings')->where('id',$id)->first();
        $similar_products = DB::table('casings')
                                ->join('categories','casings.category_id','=','categories.id')
                                ->select('casings.*','categories.category_name as category_name')
                                ->skip('id',$id)->limit(4)->orderBy('id','desc')->get();

        return view('frontend.product_details',compact('details','similar_products'));
    }
    public function graphicsCardDetails($id){
        $details = DB::table('graphics_cards')->where('id',$id)->first();
        $similar_products = DB::table('graphics_cards')
                                ->join('categories','graphics_cards.category_id','=','categories.id')
                                ->select('graphics_cards.*','categories.category_name as category_name')
                                ->skip('id',$id)->limit(4)->orderBy('id','desc')->get();

        return view('frontend.product_details',compact('details','similar_products'));
    }
    public function powerSupplyDetails($id){
        $details = DB::table('power_supplies')->where('id',$id)->first();
        $similar_products = DB::table('power_supplies')
                                ->join('categories','power_supplies.category_id','=','categories.id')
                                ->select('power_supplies.*','categories.category_name as category_name')
                                ->skip('id',$id)->limit(4)->orderBy('id','desc')->get();

        return view('frontend.product_details',compact('details','similar_products'));
    }
    public function storageDetails($id){
        $details = DB::table('storages')->where('id',$id)->first();
        $similar_products = DB::table('storages')
                                ->join('categories','storages.category_id','=','categories.id')
                                ->select('storages.*','categories.category_name as category_name')
                                ->skip('id',$id)->limit(4)->orderBy('id','desc')->get();

        return view('frontend.product_details',compact('details','similar_products'));
    }
    public function productDetails($id){
        $details = DB::table('others')->where('id',$id)->first();
        $similar_products = DB::table('others')
                                ->join('categories','others.category_id','=','categories.id')
                                ->select('others.*','categories.category_name as category_name')
                                ->skip('id',$id)->limit(4)->orderBy('id','desc')->get();

        return view('frontend.product_details',compact('details','similar_products'));
    }
    public function allProducts(){

        $categories = Category::all();

        $products = DB::table('processors')
                        ->join('categories','processors.category_id','=','categories.id')
                        ->select('processors.*','categories.category_name as category_name')
                        ->orderBy('id','desc')
                        ->paginate(8);

        $url = "processor/details";
        return view('frontend.shop',compact('categories','products','url'));
    }
    public function filterProducts($cat_id,$sub_id){

        if($cat_id == 8 && $sub_id==1){
            $categories = Category::all();
            $products = DB::table('processors')
                            ->join('categories','processors.category_id','=','categories.id')
                            ->select('processors.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "processor/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 8 && $sub_id==2){
            $categories = Category::all();
            $products = DB::table('processors')
                            ->join('categories','processors.category_id','=','categories.id')
                            ->select('processors.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "processor/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 9 && $sub_id==10){
            $categories = Category::all();
            $products = DB::table('mother_boards')
                            ->join('categories','mother_boards.category_id','=','categories.id')
                            ->select('mother_boards.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "motherboard/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 9 && $sub_id==11){
            $categories = Category::all();
            $products = DB::table('mother_boards')
                            ->join('categories','mother_boards.category_id','=','categories.id')
                            ->select('mother_boards.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "motherboard/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 15 && $sub_id==12){
            $categories = Category::all();
            $products = DB::table('rams')
                            ->join('categories','rams.category_id','=','categories.id')
                            ->select('rams.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "ram/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 15 && $sub_id==13){
            $categories = Category::all();
            $products = DB::table('rams')
                            ->join('categories','rams.category_id','=','categories.id')
                            ->select('rams.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "ram/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 16 && $sub_id==14){
            $categories = Category::all();
            $products = DB::table('storages')
                            ->join('categories','storages.category_id','=','categories.id')
                            ->select('storages.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "storage/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 16 && $sub_id==15){
            $categories = Category::all();
            $products = DB::table('storages')
                            ->join('categories','storages.category_id','=','categories.id')
                            ->select('storages.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "storage/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 17 && $sub_id==16){
            $categories = Category::all();
            $products = DB::table('casings')
                            ->join('categories','casings.category_id','=','categories.id')
                            ->select('casings.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "casing/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 17 && $sub_id==17){
            $categories = Category::all();
            $products = DB::table('casings')
                            ->join('categories','casings.category_id','=','categories.id')
                            ->select('casings.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "casing/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 18 && $sub_id==18){
            $categories = Category::all();
            $products = DB::table('power_supplies')
                            ->join('categories','power_supplies.category_id','=','categories.id')
                            ->select('power_supplies.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "power_supply/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 18 && $sub_id==19){
            $categories = Category::all();
            $products = DB::table('power_supplies')
                            ->join('categories','power_supplies.category_id','=','categories.id')
                            ->select('power_supplies.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "power_supply/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 19 && $sub_id==20){
            $categories = Category::all();
            $products = DB::table('graphics_cards')
                            ->join('categories','graphics_cards.category_id','=','categories.id')
                            ->select('graphics_cards.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "graphics_card/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 19 && $sub_id==21){
            $categories = Category::all();
            $products = DB::table('graphics_cards')
                            ->join('categories','graphics_cards.category_id','=','categories.id')
                            ->select('graphics_cards.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "graphics_card/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 20 && $sub_id==22){
            $categories = Category::all();
            $products = DB::table('others')
                            ->join('categories','others.category_id','=','categories.id')
                            ->select('others.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "product/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 20 && $sub_id==23){
            $categories = Category::all();
            $products = DB::table('others')
                            ->join('categories','others.category_id','=','categories.id')
                            ->select('others.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "product/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 20 && $sub_id==24){
            $categories = Category::all();
            $products = DB::table('others')
                            ->join('categories','others.category_id','=','categories.id')
                            ->select('others.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "product/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        elseif($cat_id == 20 && $sub_id==25){
            $categories = Category::all();
            $products = DB::table('others')
                            ->join('categories','others.category_id','=','categories.id')
                            ->select('others.*','categories.category_name as category_name')
                            ->where('subcategory_id',$sub_id)
                            ->orderBy('id','desc')
                            ->paginate(8);

            $url = "product/details";
            return view('frontend.shop',compact('categories','products','url'));
        }
        else{
            return redirect('404');
        }

    }
}
