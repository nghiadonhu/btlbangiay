
    

<style>
	@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}
body {
  background: #76b852; /* fallback for old browsers */
  background: rgb(141,194,111);
  background: linear-gradient(90deg, rgba(141,194,111,1) 0%, rgba(118,184,82,1) 50%);
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;      
}
</style>

<div class="login-page">
  <div class="form">
    <p> Đăng kí</p>

  <form action="{{ route('CheckSingnup') }}" method="post">
            @csrf
            @if(session()->has('Fail'))
				<div class="alert alert-success">
					{{session()->get('Fail') }}
				</div>
			@endif
                <div class="Content_right_login_dk_1">
                    <input type="text" name="name" placeholder="Họ Tên" >
                </div>
                
                    @error('email')
                        <div  style="color: red">{{ $message }}</div>
                    @enderror
                    <div>
                        <div class="Content_right_login">
                        <input type="email" name="email" placeholder="Email" id="email">
                        </div>
                    </div>
                
               
                    @error('password')
                        <div  style="color: red">{{ $message }}</div>
                    @enderror
                    <div>
                        <div class="Content_right_password">
                            <input type="password" name="password" placeholder="Mật Khẩu" id="password">
                        </div>
                    </div>
                
                <div class="Content_right_password">
                    <input type="password" name="remember_token" placeholder=" Nhập Lại Mật Khẩu" id="remember_token">
                </div>
                <div class="Content_right_font">
                    This site is protected by reCAPTCHA and the Google
                    <span><a href="https://policies.google.com/privacy">Privacy Policy</a></span>
                    and
                    <span><a href="https://policies.google.com/terms">Terms of Service</a></span>
                    apply
                </div>
                <div class="Content_right_test" >
                    <button type="submit"> Đăng Ký </button>
                </div>
                <div class="Content_right_test_0">
                    <p><i class="fa-solid fa-arrow-left-long"></i><a href="{{route('Login')}}">Đăng Nhập</a></p>
                </div>
            </form>
   
  </div>
</div>
<script>
	$('.message a').click(function(){
   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});
</script>
    
    
    
    
    
    
    
    
    
	

