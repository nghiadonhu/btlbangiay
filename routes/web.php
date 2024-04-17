<?php

use Illuminate\Support\Facades\Route;

Route::controller(App\Http\Controllers\WebsiteBanGiay\AccountController::class)->group(function(){

    Route::get('/Login','Login')->name('Login');

    Route::post('/Login','CheckLogin')->name('CheckLogin');

    Route::post('/Logout','Logout')->name('Logout');

    Route::get('/Singnup','Singnup')->name('Singnup');

    Route::post('/Singnup','CheckSingnup')->name('CheckSingnup');
});

Route::controller(App\Http\Controllers\WebsiteBanGiay\IndexController::class)->group(function(){
    Route::get('/','TrangChu')->name('TrangChu');

    Route::get('/Shop/SanPham/{ID}','Show')->name('ShopDetails');

    Route::get('/ShopDetails','ShopDetails')->name('ShopDetails');

    Route::get('/ShopCart','ShopCart')->name('ShopCart');

 
});

Route::controller(App\Http\Controllers\WebsiteBanGiay\ShopContronller::class)->group(function(){

    // Route::get('/Shop','Shop')->name('Shop');
    Route::get('/Shop/{id?}','Shop')->name('Shop');

    // Route::get('/{categoryName}','category')->name('category');

});

Route::controller(App\Http\Controllers\WebsiteBanGiay\CartController::class)->group(function(){

    Route::get('/ShopCart/AddCart/{ID}','AddCart')->name('AddCart');

    Route::get('/ShopCart/DeleteCart/{rowId}','DeleteCart')->name('DeleteCart');

    Route::get('/ShopCart','ShopCart')->name('ShopCart');

    // Route::post('/UpdatCart','UpdatCart')->name('UpdatCart');
    Route::post('/UpdateCart/{rowId}', 'UpdateCart')->name('UpdateCart');
    
});

Route::controller(App\Http\Controllers\WebsiteBanGiay\CheckoutController::class)->group(function(){

    Route::get('/CheckOut','CheckOut')->name('CheckOut');

    Route::get('/ThanhToan','ThanhToan')->name('ThanhToan');
    
    Route::post('/AddCheckOut','AddCheckOut')->name('AddCheckOut');

});


Route::controller(App\Http\Controllers\AdminBanGiay\IndexController::class)->group(function(){

    Route::get('/LoginAD','LoginAD')->name('LoginAD');
    
    Route::post('/LoginAD','CheckLoginAD')->name('CheckLoginAD');

    Route::get('/Admin/Home','Home')->name('Home');

    Route::get('/Admin/KhachHang','KhachHang')->name('KhachHang');

    Route::get('/Admin/NhanVien','NhanVien')->name('NhanVien');

});
use App\Http\Controllers\AdminBanGiay\SanPhamController;

Route::middleware('admin')->group(function () {
    Route::get('/Admin/QLSanPham', [SanPhamController::class, 'QLSanPham'])->name('QLSanPham');
    Route::get('/Admin/QLSanPham/CreateSP', [SanPhamController::class, 'CreateSP'])->name('CreateSP');
    Route::post('/Admin/QLSanPham/StoreSP', [SanPhamController::class, 'StoreSP'])->name('StoreSP');
    Route::get('/Admin/QLSanPham/EditSP/{ID}', [SanPhamController::class, 'EditSP'])->name('EditSP');
    Route::post('/Admin/QLSanPham/UpdateSP/{ID}', [SanPhamController::class, 'UpdateSP'])->name('UpdateSP');
    Route::delete('/Admin/QLSanPham/destroy/{iding}', [SanPhamController::class, 'destroy'])->name('deletesp');
});

use App\Http\Controllers\AdminBanGiay\DonHangController;

Route::middleware('admin')->group(function () {
    Route::get('/Admin/QLDonHang', [DonHangController::class, 'QLDonHang'])->name('QLDonHang');
    Route::get('/Admin/QLDonHang/CTDonHang/{ID}', [DonHangController::class, 'CTDonHang'])->name('CTDonHang');
    Route::delete('/Admin/QLDonHang/destroy/{id}', [DonHangController::class, 'destroy'])->name('deletedh');
});

use App\Http\Controllers\AdminBanGiay\KhachHangController;

Route::middleware('admin')->group(function () {
    Route::get('/Admin/KhachHang', [KhachHangController::class, 'KhachHang'])->name('KhachHang');
});


