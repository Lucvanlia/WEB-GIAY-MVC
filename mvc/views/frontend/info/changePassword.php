 <!-- <div class="container">
     <div class="form">
         <h3>Đổi mật khẩu</h3>
         <form action="" method="post">
             <div class="row">
                 <div class="col-6">
                     <label for="">Mật khẩu cũ</label>
                     <input type="password" name="data_post[password]" class="form-control">
                     <?php if(isset($_SESSION['errors'])){?>
                     <p style="margin: 0;color: #fff"><?= $redirect->setFlash('errors');  ?></p>
                     <?php } ?>
                 </div>
                 <div class="col-6">
                     <label for="">Mật khẩu mới</label>
                     <input type="password" name="data_post[newPassword]" class="form-control" required="">
                 </div>
             </div>
             <div class="row">
                 <div class="button_submit"><button type="submit">Cập nhật</button></div>
             </div>
         </form> -->
         <html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Login Form Design | CodeLab</title>
      <link rel="stylesheet" href="style.css">
   </head>
   <body>
      <div class="wrapper">
         <div class="title">
           Đổi mật khẩu
         </div>
         <form action="" method="post"> 
            <div class="field">
            <input type="password" name="data_post[password]" class="form-control">
                     <?php if(isset($_SESSION['errors'])){?>
                     <p style="margin: 0;color: #fff"><?= $redirect->setFlash('errors');  ?></p>
                     <?php } ?>
               <label>Mật khẩu cũ</label>
            </div>
            <div class="field">
            <input type="password" name="data_post[newPassword]" class="form-control" required="">               <label>Mật khẩu mới</label>
            </div>
            <div class="content">
             
               <div class="pass-link">
                  <a href="#">Forgot password?</a>
               </div>
            </div>
            <div class="field">
            <div class="button_submit"><button class="btn btn-danger" type="submit">Cập nhật</button></div>
            </div>
            <div class="signup-link">
             
            </div>
         </form>
      </div>
   </body>
</html>
     </div>
 </div>