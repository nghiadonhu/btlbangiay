<?php

namespace App\Http\Controllers\WebsiteBanGiay;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SanPham;
use Gloudemans\Shoppingcart\Facades\Cart;

class CartController extends Controller
{
    public function AddCart($ID){

        $product = SanPham::findOrFail($ID);
        Cart::add([
             'id' => $ID,
             'name' => $product-> TenSP,
             'qty' => 1,
             'price' => $product-> GiaSale ?? $product->DonGia,
             'weight' => $product-> weight ?? 0,
             'options' =>[
                'images' => $product -> HinhAnh,
                'Color' => $product ->MauSac,
                'KichThuoc' => $product ->KichThuoc
             ]
            ]);

        return back();
    }
    public function ShopCart(){

        $carts = Cart::content();
        $sum =0.0;
        foreach ($carts as $item){
            $sum += $item->price * $item->qty;
        }
        return view('ShopCart', compact('carts','sum'));
    }

    public function DeleteCart($rowId){

        Cart::remove($rowId);
        return back();
    }


    public function UpdateCart(Request $request, $rowId){
        Cart::update($rowId, $request->quantity);
        // return response()->json(['success' => true]);
        return redirect()->route('ShopCart');
    }

    // public function UpdatCart(Request $request){

    //     if($request -> ajax()){
            
    //         Cart::update($request -> rowId, $request -> qty);
    //     }
       
    //     return redirect()->route('ShopCart');
    // }

   

}
