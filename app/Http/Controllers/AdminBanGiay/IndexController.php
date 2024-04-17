<?php

namespace App\Http\Controllers\AdminBanGiay;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class IndexController extends Controller
{
    public function LoginAD(){

        return view('/AdminBanGiay/LoginAD');
    }
    public function CheckLoginAD(Request $request){

        $credentials = [
            'email' => $request -> email,
            'password' => $request -> password,
        ];
        $remember = $request -> remember_token;
        if(Auth::attempt($credentials, $remember)){
            return redirect('/Admin/Home');
        }else{
            session()->flash('Fail','Đăng Nhập Thất Bại');
            return redirect('LoginAD');
        }
    }

    public function Home(){

        return view('/AdminBanGiay/Index');
    }
    public function KhachHang(){

        return view('/AdminBanGiay/KhachHang');
    }
    public function NhanVien(){

        return view('/AdminBanGiay/NhanVien');
    }

}
