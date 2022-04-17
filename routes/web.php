<?php


Auth::routes(['verify' => true]);


// Route::get('/', function () {
//     return view('welcome');
// });


// Backend Routes
Route::group(['middleware' => 'verified'],function(){
    Route::get('/admin/profile/view', 'BackendController@profileView');
    Route::get('/admin/profile/update/{id}', 'BackendController@profileUpdate');
    Route::post('/admin/profile/edit', 'BackendController@profileEdit');
    Route::get('/all/admin/view', 'BackendController@adminView');
    Route::post('/admin/update', 'BackendController@adminUpdate');
    Route::get('/admin/delete/{id}', 'BackendController@adminDelete');

    //category-subcategory
    Route::get('/category/subcategory/page/view','CategorySubcategoryController@pageView');
    Route::post('/add/new/category','CategorySubcategoryController@addCategory');
    Route::get('/delete/category/{id}','CategorySubcategoryController@deleteCategory');
    Route::post('/add/sub/category','CategorySubcategoryController@addSubCategory');
    Route::get('/findsubWithcatId/{id}','CategorySubcategoryController@findsubWithcatId');

    //Processor
    Route::get('/processor/page','ProcessorController@pageView');
    Route::post('/add/product','ProcessorController@addProduct');
    Route::get('/processor/list/view','ProcessorController@viewProcessor');
    Route::get('/delete/processor/{id}','ProcessorController@deleteProcessor');
    Route::post('/processor/price/stock/update','ProcessorController@updatePriceStock');
    Route::get('/search/processor','ProcessorController@searchProcessor');
    Route::get('/model/get/processor/data/{id}','ProcessorController@getDataForModel');
    Route::post('add/processor/from/modal','ProcessorController@addDataByModel');

    //MotherBorad
    Route::get('/motherboard/page','MotherBoardController@pageView');
    Route::post('/add/motherboard','MotherBoardController@addMotherborad');
    Route::get('/motherboard/list/view','MotherBoardController@viewMotherBoard');
    Route::get('/delete/motherboard/{id}','MotherBoardController@deleteMotherBoard');
    Route::post('/motherboard/price/stock/update','MotherBoardController@updatePriceStock');
    Route::get('/search/motherboard','MotherBoardController@searchMotherBoard');
    Route::get('/model/get/motherboard/data/{id}','MotherBoardController@getDataForModel');
    Route::post('add/motherboard/from/modal','MotherBoardController@addDataByModel');

    //RAM
    Route::get('/ram/page','RamController@pageView');
    Route::post('/add/ram','RamController@addRam');
    Route::get('/ram/list/view','RamController@viewRam');
    Route::get('/delete/ram/{id}','RamController@deleteRam');
    Route::post('/ram/price/stock/update','RamController@updatePriceStock');
    Route::get('/search/ram','RamController@searchRam');
    Route::get('/model/get/ram/data/{id}','RamController@getDataForModel');
    Route::post('add/ram/from/modal','RamController@addDataByModel');

    //Storage
    Route::get('/storage/page','StorageController@pageView');
    Route::post('/add/storage','StorageController@addStorage');
    Route::get('/storage/list/view','StorageController@viewStorage');
    Route::get('/delete/storage/{id}','StorageController@deleteStorage');
    Route::post('/storage/price/stock/update','StorageController@updatePriceStock');
    Route::get('/search/storage','StorageController@searchStorage');
    Route::get('/model/get/storage/data/{id}','StorageController@getDataForModel');
    Route::post('add/storage/from/modal','StorageController@addDataByModel');

    //Casing
    Route::get('/casing/page','CasingController@pageView');
    Route::post('/add/casing','CasingController@addCasing');
    Route::get('/casing/list/view','CasingController@viewCasing');
    Route::get('/delete/casing/{id}','CasingController@deleteCasing');
    Route::post('/casing/price/stock/update','CasingController@updatePriceStock');
    Route::get('/search/casing','CasingController@searchCasing');
    Route::get('/model/get/casing/data/{id}','CasingController@getDataForModel');
    Route::post('add/casing/from/modal','CasingController@addDataByModel');

    //PSU
    Route::get('/psu/page','PowerSupplyController@pageView');
    Route::post('/add/psu','PowerSupplyController@addPSU');
    Route::get('/psu/list/view','PowerSupplyController@viewPSU');
    Route::get('/delete/psu/{id}','PowerSupplyController@deletePSU');
    Route::post('/psu/price/stock/update','PowerSupplyController@updatePriceStock');
    Route::get('/search/psu','PowerSupplyController@searchPSU');
    Route::get('/model/get/psu/data/{id}','PowerSupplyController@getDataForModel');
    Route::post('add/psu/from/modal','PowerSupplyController@addDataByModel');

    //GPU
    Route::get('/gpu/page','GraphicsCardController@pageView');
    Route::post('/add/gpu','GraphicsCardController@addGPU');
    Route::get('/gpu/list/view','GraphicsCardController@viewGPU');
    Route::get('/delete/gpu/{id}','GraphicsCardController@deleteGPU');
    Route::post('/gpu/price/stock/update','GraphicsCardController@updatePriceStock');
    Route::get('/search/gpu','GraphicsCardController@searchGPU');
    Route::get('/model/get/gpu/data/{id}','GraphicsCardController@getDataForModel');
    Route::post('add/gpu/from/modal','GraphicsCardController@addDataByModel');

    //others
    Route::get('/others/page','OthersController@pageView');
    Route::post('/add/others','OthersController@addOthers');
    Route::get('/others/list/view','OthersController@viewOthers');
    Route::get('/delete/others/{id}','OthersController@deleteOthers');
    Route::post('/others/price/stock/update','OthersController@updatePriceStock');
    Route::get('/search/others','OthersController@searchOthers');
    Route::get('/model/get/others/data/{id}','OthersController@getDataForModel');
    Route::post('add/others/from/modal','OthersController@addDataByModel');

    //order management
    Route::get('/pending/order/lists','OrderController@pendingListView');
    Route::get('generate/pdf/{id}','OrderController@generatePDF');
    Route::get('/approve/order/{id}','OrderController@approveOrder');
    Route::get('/delete/order/{id}','OrderController@deleteOrder');
    Route::get('/approved/order/lists','OrderController@approveListView');
    Route::get('complete/order/{id}','OrderController@completeOrder');

    //sales report
    Route::get('/sales/page/view','SaleController@salePageView');
    Route::post('/filter/sales/by/date','SaleController@filterSalesByDate');
    Route::get('/print/sales/report','SaleController@printSalesReport');
    Route::post('/filter/sales/report/by/date/pdf','SaleController@filterSalesReportPDF');

    //Stock Report
    Route::get('/stock/report/generate','BackendController@stockReportGenerate');

});

Route::get('/home', 'HomeController@index')->name('home');

//FrontEnd Route starts
Route::get('/','FrontEndController@index');

//product details
Route::get('/processor/details/{id}','FrontEndController@processorDetails');
Route::get('/motherboard/details/{id}','FrontEndController@motherboardDetails');
Route::get('/ram/details/{id}','FrontEndController@ramDetails');
Route::get('/casing/details/{id}','FrontEndController@casingDetails');
Route::get('/graphics_card/details/{id}','FrontEndController@graphicsCardDetails');
Route::get('/power_supply/details/{id}','FrontEndController@powerSupplyDetails');
Route::get('/storage/details/{id}','FrontEndController@storageDetails');
Route::get('/product/details/{id}','FrontEndController@productDetails');

//all products
Route::get('/all/products','FrontEndController@allProducts');
//filter products
Route::get('/filter/{cat_id}/{sub_id}','FrontEndController@filterProducts');

//cart
Route::get('/add/to/cart/{name}/{price}','CartController@addToCart');
Route::post('/add/to/cart','CartController@addToCartPost');
Route::get('/view/cart/page','CartController@viewCartPage')->name('ViewCart');
Route::get('/delete/cart/item/{id}','CartController@deleteCartItem');
Route::post('/apply/coupon','CartController@applyCoupon');

Route::get('/add/to/cart/{name}/{price}/{category_id}','CartController@addToCartDeduct');

//coupon
Route::get('/coupon/page/view','CouponController@viewPage');
Route::post('/add/new/coupon','CouponController@addCoupon');
Route::get('/delete/coupon/{id}','CouponController@deleteCoupon');

//Checkout
Route::get('/checkout/view','CheckoutController@viewCheckoutPage')->name('ViewCheckout');
Route::get('/findDistrictWithDivisionId/{id}','CheckoutController@getDistrict');
Route::get('/findAreaWithDistrictId/{id}','CheckoutController@getArea');
Route::post('/place/an/order','CheckoutController@placeOrder');
Route::get('cash/on/delivery','CheckoutController@cashOnDelivery');

//stripe
Route::get('stripe', 'StripePaymentController@stripe');
Route::post('stripe', 'StripePaymentController@stripePost')->name('stripe.post');

//custom build page
Route::get('/custom/pc/build/page','CustomController@customPage');
Route::get('/add/to/custom/cart','CustomController@addToCustomCart');
Route::get('/add/processor/to/custom/cart/{name}/{price}','CustomController@addProcessorToCustomCart');
Route::get('/add/motherboards/to/custom/cart/{name}/{price}','CustomController@addMoboToCustomCart');
Route::get('/add/ram/to/custom/cart/{name}/{price}','CustomController@addRamToCustomCart');
Route::get('/add/storage/to/custom/cart/{name}/{price}','CustomController@addStorageToCustomCart');
Route::get('/add/graphics/to/custom/cart/{name}/{price}','CustomController@addGraphicsToCustomCart');
Route::get('/add/casing/to/custom/cart/{name}/{price}','CustomController@addCasingToCustomCart');
Route::get('/add/casing/psu/to/custom/cart/{name}/{price}','CustomController@addCasingPSUToCustomCart');
Route::get('/add/psu/to/custom/cart/{name}/{price}','CustomController@addPSUToCustomCart');
