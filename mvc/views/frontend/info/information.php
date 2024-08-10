

<!-- <div class="container">
     <div class="form">
         <h3>Thông tin chung</h3>
         <form action="" method="post">
             <div class="row">
                 <div class="col-6">
                     <label for="">Họ và tên</label>
                     <input type="text" name="data_post[name]" value="<?= $data_index['user']['name'] ?>"
                         class="form-control">
                 </div>
                 <div class="col-6">
                     <label for="">Email</label>
                     <input type="text" name="data_post[email]" class="form-control" required=""
                          value="<?= $data_index['user']['email'] ?>">
                 </div>
             </div>
             <div class="row">
                 <div class="col-6">
                     <label for="">Số điện thoại</label>
                     <input type="text" name="data_post[phoneNumber]" class="form-control"
                         value="<?= $data_index['user']['phoneNumber'] ?>">
                 </div>
                 <div class="col-6">
                     <label for="">Địa chỉ 1</label>
                     <input type="text" name="data_post[address][address1]" class="form-control" required=""
                         value="<?= isset($data_index['user']['address']['address1']) ? $data_index['user']['address']['address1'] : '' ?>">
                 </div>

             </div>
             <div class="row">
                 <div class="col-6">
                     <label for="">Địa chỉ 2</label>
                     <input type="text" name="data_post[address][address2]" class="form-control" required=""
                         value="<?= isset($data_index['user']['address']['address2']) ? $data_index['user']['address']['address2'] : '' ?>">
                 </div>
             </div>
             <div class="row">
                 <div class="button_submit"><button type="submit">Cập nhật</button></div>
             </div>
         </form>
     </div>
 </div> -->
 <!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Login Form Design | CodeLab</title>
      <link rel="stylesheet" href="style.css">
   </head>
   <body>
      <div class="wrapper">
         <div class="title">
          Thông tin chung 
         </div>
         <form action="#" method="post">
            <div class="field">
            <input type="text" name="data_post[name]" value="<?= $data_index['user']['name'] ?>"
            class="form-control">               <label>Họ và tên</label>
            </div>
            <div class="field">
            <input type="text" name="data_post[email]" class="form-control" required=""
            value="<?= $data_index['user']['email'] ?>">
               <label>Email</label>
            </div>
            <div class="field">
            <input type="text" name="data_post[phoneNumber]" class="form-control"
            value="<?= $data_index['user']['phoneNumber'] ?>">               <label>Số điện thoại</label>
            </div>
            <div class="field">
            <input type="text" name="data_post[address][address1]" class="form-control" required=""
            value="<?= isset($data_index['user']['address']['address1']) ? $data_index['user']['address']['address1'] : '' ?>">               <label>Địa chỉ gốc</label>
            </div>
            <div class="field">
            <input type="text" name="data_post[address][address2]" class="form-control" required=""
            value="<?= isset($data_index['user']['address']['address2']) ? $data_index['user']['address']['address2'] : '' ?>">       <label>Địa chỉ phụ</label>
            </div>
        
            <div class="field d-flex justify-content-center">
               <div ><button class="button_submit btn btn-primary d-flex justify-content-center" type="submit">Cập nhật</button></div>

            </div>
         </form>
      </div>
   </body>
</html>
