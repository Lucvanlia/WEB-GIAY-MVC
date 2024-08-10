<link rel="stylesheet" href="public/build/css/contact.css">
<!-- Bootstrap -->
<link href="public/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="public/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<script src="public/build/js/validate.js"></script>
<div class="row">
<div class="contact-form-area col-sm-7">
				<div class="contact-form-inner">
					<h4 class="text-capitalize">Nêu cảm nhận bạn ở đây</h4>
                    <form action="" method="post" id="form__submit" class="contact-form">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label for="name">Họ và tên</label>
                                <input id="name" type="text" class="form-control" name="name">
                                <small></small>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="">Giới tính</label>
                                <div class="row">
                                    <div class="col-6">
                                        <label for="male"> Nam: <input id="male" type="radio" checked value="2"
                                                name="sex"></label>
                                    </div>
                                    <div class="col-6">
                                        <label for="female"> Nữ: <input id="female" type="radio" value="1"
                                                name="sex"></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="phone">Số điện thoại</label>
                                <input id="phone" type="text" class="form-control" name="phoneNumber">
                                <small></small>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input id="email" type="text" class="form-control" name="email" required=""
                                    pattern="[^@\s]+@[^@\s]+\.[^@\s]+">
                                <small></small>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="address">Địa chỉ</label>
                                <input id="address" type="text" class="form-control" name="address">
                                <small></small>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <label for="contents">Nội dung</label>
                                <textarea id="contents" type="text" class="form-control" name="contents"></textarea>
                                <small></small>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Gửi</button>
                            </div>
                            <small id="success" style="color: green"> </small>
                        </div>
                    </div>
                </form>
				</div>
				</div>
				<div class="contact-address col-sm-5">
				<div class="contact-inner float-left w-100">
                <div class="contact-information">
									<h4 class="text-capitalize">contact us</h4>

                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu vehicula turpis. Donec semper, nunc a imperdiet sollicitudin, lacus arcu semper nibh, non fermentum risus est quis augue.</p>
                    <div class="contact-wrapper">
                        <div class="contact-list">
                           <i class="material-icons">place</i>
                            <span>Address :  4030, Central Bazzar, opp. Varachha Police Station, Varachha Main Road, Surat, Gujarat 395006, India</span>
                        </div>
                        <div class="contact-list">
                           <i class="material-icons">call</i>
                            <span>demo@store.com</span>
                        </div>
                        <div class="contact-list">
                          <i class="material-icons">email</i>
                            <span>0(1234) 567 890</span>
                        </div>
                    </div>
                </div>
                <div class="working-time">
                    <h5>Working hours</h5>
                    <div>
					<div>Monday – Saturday</div>
					<div>09AM – 07PM</div>
					</div>
                </div>
				</div>
				</div>
</div>
<!-- <div class="container">
    <div class="contact">
        <div class="left">Liên hệ với chúng tôi</div>
        <div class="right">
            <div class="form">
                <form action="" method="post" id="form__submit">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label for="name">Họ và tên</label>
                                <input id="name" type="text" class="form-control" name="name">
                                <small></small>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="">Giới tính</label>
                                <div class="row">
                                    <div class="col-6">
                                        <label for="male"> Nam: <input id="male" type="radio" checked value="2"
                                                name="sex"></label>
                                    </div>
                                    <div class="col-6">
                                        <label for="female"> Nữ: <input id="female" type="radio" value="1"
                                                name="sex"></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="phone">Số điện thoại</label>
                                <input id="phone" type="text" class="form-control" name="phoneNumber">
                                <small></small>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input id="email" type="text" class="form-control" name="email" required=""
                                    pattern="[^@\s]+@[^@\s]+\.[^@\s]+">
                                <small></small>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="address">Địa chỉ</label>
                                <input id="address" type="text" class="form-control" name="address">
                                <small></small>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <label for="contents">Nội dung</label>
                                <textarea id="contents" type="text" class="form-control" name="contents"></textarea>
                                <small></small>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Gửi</button>
                            </div>
                            <small id="success" style="color: green"> </small>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div> -->
<script>
validator({
    form: "#form__submit",
    formGroup: ".form-group",
    error: "small",
    rules: [
        validator.isRequired('#name'),
        validator.isRequired('#phone'),
        validator.isRequired('#email'),
        validator.isEmail('#email'),
        validator.isRequired('#address'),
        validator.isRequired('#contents'),
        validator.isPhone('#phone'),
    ],
    onsubmit: (data) => {
        const xhr = new XMLHttpRequest();
        xhr.open('POST', 'contact/sendContact');
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function(e) {
            if (e.target.status == 200) {
                // const data = JSON.parse(this.responseText);
                document.getElementById('success').innerText = "Gửi thành công";
                setTimeout(() => {
                    document.getElementById('success').innerText = "";
                }, 2000);
                document.getElementById('form__submit').reset();
            }

        }
        xhr.send(`data=${JSON.stringify(data)}`)
    }
});
</script>