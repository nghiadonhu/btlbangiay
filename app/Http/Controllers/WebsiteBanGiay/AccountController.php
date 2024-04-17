<?php

namespace App\Http\Controllers\WebsiteBanGiay;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Models\KhachHang;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
class AccountController extends Controller
{
    public function Login(){
        return view('Login');
    }
    
    public function CheckLogin(Request $request){
        $credentials = [
            'email' => $request->email,
            'password' => $request->password,
        ];
        $remember = $request->remember_token;
        if (Auth::attempt($credentials, $remember)) {
            $user = Auth::user();
            if ($user->role == 'admin') {
                return redirect('/Admin/Home');
            } else {
                Auth::logout();
                session()->flash('Fail','Bạn không có quyền truy cập.');
                return redirect('Login');
            }
        } else {
            session()->flash('Fail','Đăng Nhập Thất Bại');
            return redirect('Login');
        }
    }
    

    public function Logout(){
        Auth::logout();
        // return back();
        return redirect()->route('Login');
    }

   public function Singnup(){
        return view('Singnup');
    }


    public function CheckSingnup(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6',
            'remember_token' => 'required|min:6',
        ]);

        $data = $request->all();
        $check = $this->create($data);
        session()->flash('Fail','Đăng Ký Thành Công Xin Mời Đăng Nhập');

        return redirect("Singnup")->withSuccess('have signed-in');
    }


    public function create(array $data)
    {
      return User::create([
        'name' => $data['name'],
        'email' => $data['email'],
        'password' => Hash::make($data['password']),
        'remember_token' => Hash::make($data['remember_token'])
       

      ]);
    }



  
}
