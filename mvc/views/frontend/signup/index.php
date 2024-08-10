<?php
    require_once "./mvc/core/redirect.php";
    require_once "./mvc/core/constant.php";
    $redirect = new redirect();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title><?= $title ?></title>
    <base href="http://localhost/shopping/">
    <!-- Bootstrap -->
    <link href="public/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font Awesome -->
    <link href="public/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!-- NProgress -->
    <link href="public/vendors/nprogress/nprogress.css" rel="stylesheet" />
    <!-- Animate.css -->
    <link href="public/vendors/animate.css/animate.min.css" rel="stylesheet" />
    <!-- Custom Theme Style -->
    <link href="public/build/css/custom.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,500,700,900" rel="stylesheet"> 
	
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">	
	<!-- Bootstrap core CSS -->
    <style>
    @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
html,body{
  display: grid;
  height: 100%;
  width: 100%;
  place-items: center;
  background: #f2f2f2;
  /* background: linear-gradient(-135deg, #c850c0, #4158d0); */
}
::selection{
  background: #4158d0;
  color: #fff;
}
.wrapper{
  width: 380px;
  background: #fff;
  border-radius: 15px;
  box-shadow: 0px 15px 20px rgba(0,0,0,0.1);
}
.wrapper .title{
  font-size: 35px;
  font-weight: 600;
  text-align: center;
  line-height: 100px;
  color: #fff;
  user-select: none;
  border-radius: 15px 15px 0 0;
  background: linear-gradient(-135deg, #c850c0, #4158d0);
}
.wrapper form{
  padding: 10px 30px 50px 30px;
}
.wrapper form .field{
  height: 50px;
  width: 100%;
  margin-top: 20px;
  position: relative;
}
.wrapper form .field input{
  height: 100%;
  width: 100%;
  outline: none;
  font-size: 17px;
  padding-left: 20px;
  border: 1px solid lightgrey;
  border-radius: 25px;
  transition: all 0.3s ease;
}
.wrapper form .field input:focus,
form .field input:valid{
  border-color: #4158d0;
}
.wrapper form .field label{
  position: absolute;
  top: 50%;
  left: 20px;
  color: #999999;
  font-weight: 400;
  font-size: 17px;
  pointer-events: none;
  transform: translateY(-50%);
  transition: all 0.3s ease;
}
form .field input:focus ~ label,
form .field input:valid ~ label{
  top: 0%;
  font-size: 16px;
  color: #4158d0;
  background: #fff;
  transform: translateY(-50%);
}
form .content{
  display: flex;
  width: 100%;
  height: 50px;
  font-size: 16px;
  align-items: center;
  justify-content: space-around;
}
form .content .checkbox{
  display: flex;
  align-items: center;
  justify-content: center;
}
form .content input{
  width: 15px;
  height: 15px;
  background: red;
}
form .content label{
  color: #262626;
  user-select: none;
  padding-left: 5px;
}
form .content .pass-link{
  color: "";
}
form .field input[type="submit"]{
  color: #fff;
  border: none;
  padding-left: 0;
  margin-top: -10px;
  font-size: 20px;
  font-weight: 500;
  cursor: pointer;
  background: linear-gradient(-135deg, #c850c0, #4158d0);
  transition: all 0.3s ease;
}
form .field input[type="submit"]:active{
  transform: scale(0.95);
}
form .signup-link{
  color: #262626;
  margin-top: 20px;
  text-align: center;
}
form .pass-link a,
form .signup-link a{
  color: #4158d0;
  text-decoration: none;
}
form .pass-link a:hover,
form .signup-link a:hover{
  text-decoration: underline;
}
</style>
    <link href="public/lib_fronend/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="public/lib_fronend/css/styles.css" rel="stylesheet">
    <link href="public/lib_fronend/css/animate.css" rel="stylesheet">
    <link href="public/lib_fronend/css/owl-carousel.css" rel="stylesheet">
	 <link href="public/lib_fronend/css/lightbox.css" rel="stylesheet">
	 <base href="http://localhost/shopping/">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="public/build/css/shopping.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">

</head>
<!-- 
<body class="login">
    <div>
        <?php if(isset($_SESSION['flash'])){?>
        <p class="text-success"><?= $redirect->setFlash('flash');  ?></p>
        <?php } ?>
        <?php if(isset($_SESSION['errors'])){?>
        <p class="text-danger"><?= $redirect->setFlash('errors');  ?></p>
        <?php } ?>
        <div class="login_wrapper">

            <div class="animate form login_form">
                <section class="login_content">
                <h1>Trở thành thành viên chúng tôi nào</h1>

                    <form action="auth/signup" method="post">
                        <div class="field">
                            <input type="text" name="data_post[name]" class="form-control" placeholder="Full name"
                                required />
                        </div>
                        <div class="field">
                            <input type="text" name="data_post[username]" class="form-control" placeholder="Username"
                                pattern="[a-zA-Z ]+" required />
                        </div>
                        <div class="field">
                            <input type="password" name="data_post[password]" class="form-control"
                                placeholder="Password" pattern="[a-zA-Z-0-9]+" required />
                        </div>
                        <div style="display: flex; justify-content: space-between " > 
                            <button class="btn btn-primary">Đăng ký</button>
                            <br>
                            <a class="btn btn-primary float-left" href="dang-nhap.html" style="color: blue; text-decoration: underline">Đăng nhập</a>
                        </div>
                        <div class="clearfix"></div>
                        <div>
                            <?php if(isset($_SESSION['errors'])){?>
                            <h4 class="text-danger"><?= $redirect->setFlash('errors');  ?></h4>
                            <?php } ?>
                        </div>
                    </form>
                </section> -->
                <!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Login Form Design | CodeLab</title>
      <link rel="stylesheet" href="style.css">
   </head>
   <body>
   <?php if(isset($_SESSION['flash'])){?>
        <p class="text-success"><?= $redirect->setFlash('flash');  ?></p>
        <?php } ?>
        <?php if(isset($_SESSION['errors'])){?>
        <p class="text-danger"><?= $redirect->setFlash('errors');  ?></p>
        <?php } ?>
      <div class="wrapper">
         <div class="title">
           Đăng ký thành viên
         </div>
         <form action="auth/signup" method="post">
            <div class="field">
            <input type="text" name="data_post[name]" class="form-control" 
            required />               <label>Họ và tên</label>
            </div>
            <div class="field">
            <input type="text" name="data_post[username]" class="form-control" 
            pattern="[a-zA-Z ]+" required />               <label>Tên tài khoản</label>
            </div>
            <div class="field">
            <input type="password" name="data_post[password]" class="form-control"
           pattern="[a-zA-Z-0-9]+" required />
                    <label>Mật khẩu</label>
            </div>
            <div class="content">
               <div class="checkbox">
               <a class=" float-left" href="dang-nhap.html" style="color: blue; text-decoration: underline">Đăng nhập</a>
               </div>
               <div class="pass-link">
               </div>
            </div>
            <div class="field">
            <button class="btn btn-primary form-control">Đăng ký ngay</button>
            <?php if(isset($_SESSION['flash'])){?>
        <p class="text-success"><?= $redirect->setFlash('flash');  ?></p>
        <?php } ?>
        <?php if(isset($_SESSION['errors'])){?>
        <p class="text-danger"><?= $redirect->setFlash('errors');  ?></p>
        <?php } ?>
            </div>
            <div class="signup-link">
            </div>
            <div>
                            <?php if(isset($_SESSION['errors'])){?>
                            <h4 class="text-danger"><?= $redirect->setFlash('errors');  ?></h4>
                            <?php } ?>
                        </div>
         </form>
      </div>
   </body>
</html>
            </div>
        </div>
    </div>
</body>

</html>