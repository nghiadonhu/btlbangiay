@extends('/AdminBanGiay/LayoutAdmin/layout')

@section('content')
<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Sửa Sản Phẩm</h1>
    <br> 
    <div class="card">
        <div class="card-body">
            
            <form class="forms-sample" role="form" action="{{ route('UpdateSP',['ID' => $product->ID]) }}" method="POST">
            @csrf
            <p>
            {{ $product->ID }}
            </p>
                <div class="form-group">
                    <label>Hình Ảnh :</label>
                    <input type="file" name="HinhAnh" id="HinhAnh" class="form-control">
                </div>
                <div class="form-group">
                    <label for="entercateid">Loại Sản Phẩm</label>
                    <select class="form-control" name="MaLoai" id="MaLoai">
                        <option value="" name="MaLoai" selected> -- Chọn loại sản phẩm --</option>
                        @foreach($loaisanpham as $loaisanphams)
                        <option  value="{{ $loaisanphams->ID }}" >{{ $loaisanphams->TenLoai }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="entercateid">Nhà Sản Xuất</label>
                    <select class="form-control" name="MaNCC" id="MaNCC">
                        <option value="" name="MaNCC" selected> -- Chọn nhà sản xuất --</option>
                        @foreach($nhasanxuat as $nhasanxuats)
                        <option  value="{{ $nhasanxuats->ID }}" >{{ $nhasanxuats->TenNCC }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="TenSP">Tên Sản Phẩm :</label>
                    <input type="text" class="form-control" name="TenSP" value="{{ $product->TenSP }}" id="TenSP" placeholder=" ......">
                </div>
                <div class="form-group">
                    <label for="MauSac">Màu Sắc :</label>
                    <input type="text" class="form-control" name="MauSac" id="MauSac" value="{{ $product->MauSac }}" placeholder="......">
                </div>
                <div class="form-group">
                    <label for="DonGia">Đơn Giá :</label>
                    <input type="number"  class="form-control" name="DonGia" value="{{ $product->DonGia }}" id="DonGia" placeholder="......">
                </div>
                <div class="form-group">
                    <label for="GiaSale">Giá Sale :</label>
                    <input type="number"  class="form-control" name="GiaSale" value="{{ $product->GiaSale }}" id="GiaSale" placeholder="......">
                </div>
                <div class="form-group">
                    <label for="GhiChu">Ghi Chú :</label>
                    <input type="text" class="form-control" name="GhiChu" id="GhiChu" value="{{ $product->GhiChu }}" placeholder="......">
                </div>
                <div class="form-group">
                    <label for="SoLuong">Số Lượng :</label>
                    <input type="number"  class="form-control" name="SoLuong" value="{{ $product->SoLuong }}" id="SoLuong" placeholder="......">
                </div>
                <div class="form-group">
                    <label for="KichThuoc">Kích Thước :</label>
                    <input type="text" class="form-control" name="KichThuoc" value="{{ $product->KichThuoc }}" id="KichThuoc" placeholder="......">
                </div>
                <button type="submit" class="btn btn-primary mr-2">Cập Nhập</button>
                <button class="btn btn-light">Cancel</button>
            </form>
        </div>
    </div>
    <br> <br>
</div>
@endsection