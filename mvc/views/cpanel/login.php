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
  <title>Gentelella Alela! |</title>
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
</head>
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
<body class="login">
  <div>
    <!-- <a class="hiddenanchor" id="signup"></a>
    <a class="hiddenanchor" id="signin"></a>

    <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">
            <form action="cpanel/auth/login" method="post">
                <h1>Login Form</h1>
                <div>
                    <input type="text" name="username" value="<?= $data['datas']!=NULL?$data['datas']['username']:'' ?>" class="form-control" placeholder="Username" required="" />
                </div>
                <div>
                    <input type="password" value="<?= $data['datas']!=NULL?$data['datas']['password']:'' ?>" name="password" class="form-control" placeholder="Password" required="" />
                </div>
                <div>
                    <button class="btn btn-primary">Log in</button>
                    <label for="remmber">Ghi nhớ mật khẩu và tài khoản</label>
                    <input type="checkbox" name="remember" <?= $data['datas']!=NULL?$data['datas']['remember'] == 1?'checked':'':'' ?> value = "1" id="remmber">
                </div>
                <div class="clearfix"></div>
                <div>
                    <?php if(isset($_SESSION['errors'])){?>
                        <h4 class="text-danger"><?= $redirect->setFlash('errors');  ?></h4>
                    <?php } ?>
                </div>
                </div>
            </form>
            </section> -->
            <html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Login Form Design | CodeLab</title>
      <link rel="stylesheet" href="style.css">
   </head>
   <body>
      <div class="wrapper">
         <div class="title">
            Login Form
         </div>
         <form action="cpanel/auth/login" method="post">
            <div class="field">
            <input type="text" name="username" value="<?= $data['datas']!=NULL?$data['datas']['username']:'' ?>" class="form-control" placeholder="Username" required="" />
            <label>Tên tài khoản</label>
            </div>
            <div class="field">
            <input type="password" value="<?= $data['datas']!=NULL?$data['datas']['password']:'' ?>" name="password" class="form-control" placeholder="Password" required="" />
            <label>Mật khẩu</label>
            </div>
            <div class="content d-flex justify-content-center">
               <div class="checkbox">
            <button class="btn btn-primary d-flex justify-content-center">Log in</button>
               </div>
               <div class="pass-link">
               </div>
            </div>
        
            <div class="signup-link">
            <div class="field">
                    <?php if(isset($_SESSION['errors'])){?>
                        <h4 class="text-danger"><?= $redirect->setFlash('errors');?></h4>
                        <script type="text/javascript"> alert('Sai mật khẩu ròi')</script>
                    <?php } ?>
                </div>        
                <div class="field form-check">
                    <input type="checkbox" class="form-check-input"name="remember" <?= $data['datas']!=NULL?$data['datas']['remember'] == 1?'checked':'':'' ?> value = "1" id="remmber">
                    <label for="remmber">Ghi nhớ mật khẩu và tài khoản</label>

            </div>    </div>
         </form>
      </div>
   </body>
</html>
        </div>
    </div>
  </div>
</body>

</html>