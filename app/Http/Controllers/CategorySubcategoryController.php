<?php

namespace App\Http\Controllers;

use App\Category;
use App\SubCategory;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CategorySubcategoryController extends Controller
{
    public function pageView(){
        $categories = Category::all();
        $sub = DB::table('sub_categories')
                   ->join('categories','sub_categories.category_id','=','categories.id')
                   ->select('sub_categories.*','categories.category_name')
                   ->get();

        return view('backend.category-subcategory',compact('categories','sub'));
    }
    public function addCategory(Request $request){

        Category::insert([
            "category_name" => $request->category_name,
            "created_at"    => Carbon::now(),
        ]);

        return back()->with('cataddmsg','New Category Added');
    }
    public function deleteCategory($id){
        Category::findOrFail($id)->delete();
        return back()->with('catdelmsg','Category Deleted');
    }

    public function addSubCategory(Request $request){
        SubCategory::insert([
            "category_id"      => $request->category_id,
            "subcategory_name" => $request->subcategory_name,
            "created_at"       => Carbon::now(),
        ]);

        return back()->with('addsubmsg','New Sub-Category Added');
    }

    public function findsubWithcatId($id){

        $subcategory = DB::table('sub_categories')
                            ->where('category_id',$id)
                            ->get();

        return response()->json($subcategory);
    }
}
