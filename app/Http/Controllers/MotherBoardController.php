<?php

namespace App\Http\Controllers;

use App\Category;
use App\MotherBoard;
use Carbon\Carbon;
use Image;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class MotherBoardController extends Controller
{
    public function pageView(){
        $category = Category::all();
        $storage_types = DB::table('storage_type')->get();
        $form_factors = DB::table('form_factor')->get();
        return view('backend.add_motherboard',compact('category','storage_types','form_factors'));
    }

    public function addMotherborad(Request $request){
        if($request->hasFile('image')){

            $get_image = $request->file('image');
            $image_name = str::random(5).'.'.$get_image->getClientOriginalExtension();
            Image::make($get_image)->resize(800,800)->save(base_path('public/motherboard_images/'.$image_name,100));

            MotherBoard::insert([
                'category_id'    => $request->category_id,
                'subcategory_id' => $request->subcategory_id,
                'name'           => $request->name,
                'brand'          => $request->brand,
                'socket'         => $request->socket,
                'ram_type'       => $request->ram_type,
                'storage_type'   => $request->storage_type,
                'form_factor'    => $request->form_factor,
                'details'        => $request->details,
                'price'          => $request->price,
                'stock'          => $request->stock,
                'image'          => 'motherboard_images/'.$image_name,
                'created_at'     => Carbon::now(),
            ]);

        }

        else{
            MotherBoard::insert([
                'category_id'    => $request->category_id,
                'subcategory_id' => $request->subcategory_id,
                'name'           => $request->name,
                'brand'          => $request->brand,
                'socket'         => $request->socket,
                'ram_type'       => $request->ram_type,
                'storage_type'   => $request->storage_type,
                'form_factor'    => $request->form_factor,
                'details'        => $request->details,
                'price'          => $request->price,
                'stock'          => $request->stock,
                'created_at'     => Carbon::now(),
            ]);
        }

        return back()->with('msg','A New MotherBoard has been added');
    }

    public function viewMotherBoard(){

        $motherboards = DB::table('mother_boards')
                         ->join('categories','mother_boards.category_id','=','categories.id')
                         ->join('sub_categories','mother_boards.subcategory_id','=','sub_categories.id')
                         ->select('mother_boards.*','categories.category_name','sub_categories.subcategory_name')
                         ->orderBy('id','desc')
                         ->paginate(10);

        return view('backend.view_motherboard',compact('motherboards'));
    }

    public function deleteMotherBoard($id){
        $image_data = MotherBoard::findOrfail($id)->image;

        if($image_data != null){
            unlink(base_path('public/'.$image_data));
            MotherBoard::findOrFail($id)->delete();
            return back()->with('msg','Item has been Deleted');
        }
        else{
            MotherBoard::findOrFail($id)->delete();
            return back()->with('msg','Item has been Deleted');
        }
    }
    public function updatePriceStock(Request $request){
        foreach($request->motherboard_id as $value){
            MotherBoard::findOrFail($value)->update([
                'stock' => $request->stock[$value],
                'price' => $request->price[$value],
            ]);
        }
        return back()->with('msg','Information Updated');
    }
    public function searchMotherBoard(Request $request){
        if($request->ajax())
        {
            $output="";
            $products=DB::table('mother_boards')->where('name','LIKE','%'.$request->search."%")->OrderBy('id','desc')->get();

            if($products)
            {
                $sl = 1;
                foreach ($products as $key => $product) {
                    $output.='<tr>'.
                    '<td>'.$sl.'</td>'.
                    '<td>'.$product->brand.'</td>'.
                    '<td>'.'<img style="width:60px" src="http://127.0.0.1:8000/'.$product->image.'">'.'</td>'.
                    '<td>'.$product->id.'</td>'.
                    '<td>'.$product->name.'</td>'.
                    '<td>'.$product->socket.'</td>'.
                    '<td>'.$product->stock.'</td>'.
                    '<td>'.$product->price.'</td>'.
                    '<td>'.'<a class="btn btn-sm btn-danger rounded mb-1" href="/delete/motherboard/'.$product->id.'">'.'Delete'.'</a>'.'</td>'.
                    '<td>'.'<a class="edit btn btn-warning btn-sm editProduct rounded" href="javascript:void(0)" data-toggle="tooltip" data-id="'.$product->id.'" data-original-title="Edit">'.'Edit'.'</a>'.'</td>'.
                    '</tr>';

                    $sl++;
                }
                return Response($output);
            }
        }
    }

    public function getDataForModel($id){
        $product = MotherBoard::find($id);
        return response()->json($product);
    }

    public function addDataByModel(Request $request){
        
        MotherBoard::findOrFail($request->modal_id)->update([
            'name'    => $request->name_modal,
            'brand'   => $request->brand_modal,
            'socket'  => $request->socket_modal,
            'details' => $request->details_modal,
            'price'   => $request->price_modal,
            'stock'   => $request->stock_modal,
        ]);

        return response()->json(['success'=>'Product saved successfully.']);
    }
}
