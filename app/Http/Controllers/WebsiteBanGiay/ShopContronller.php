<?php

namespace App\Http\Controllers\WebsiteBanGiay;

use App\Http\Controllers\Controller;
use App\Models\ChiTietAnhSP;
use Illuminate\Http\Request;
use App\Models\SanPham;
use App\Models\LoaiSanPham;

class ShopContronller extends Controller
{


    public function Shop($id=null){
       
        $loaisp = LoaiSanPham::where('id', '!=', 6)->get();  
        $spall=SanPham::all();      
        if ($id) {
            $product = SanPham::where('MaLoai', '=', $id)->paginate(9);
        } else {
            $product = SanPham::paginate(9);
        }
        return view('Shop',compact('loaisp','product'));
    }


    
}
