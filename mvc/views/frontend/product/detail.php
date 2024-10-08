<link rel="stylesheet" href="public/build/css/detail.css">
<div class="container">
			<div class="row">
				<div class="left-columm col-lg-7 col-md-7 p-0 mb-xs-30">
					<div class="small-image-list float-left w-100"> 
                                <div class="nav-add-grid small-image-slider-single-product-tabstyle-3" role="tablist">
                                    <div class="single-small-image img-full col-sm-6 float-left mb-30">
                                        <a data-toggle="tab" id="product-tab-01" href="<?= $product['image'] ?>" class="img"><img src="<?= $product['image'] ?>" class="img-fluid" alt=""></a>
                                    </div>
                                    <?php if(isset($list_images) && $list_images != NULL){?>
                                        <div class="single-small-image img-full col-sm-6 float-left mb-30">
                                        <?php foreach($list_images as $key => $val){?>
                 
                            <div class="single-small-image img-full col-sm-6 float-left mb-30">
                                        <a data-toggle="tab" id="product-tab-02" href="#product-02" class="img active"><img src="<?= $val['image'] ?>" class="img-fluid" alt=""></a>
                                    </div>
                            <br>
                            <?php } ?>
                        </div>
                        <?php } ?>
                                    <div class="single-small-image img-full col-sm-6 float-left mb-30">
                                        <a data-toggle="tab" id="product-tab-02" href="#product-02" class="img active"><img src="img/products/02.jpg" class="img-fluid" alt=""></a>
                                    </div>
                                    <div class="single-small-image img-full col-sm-6 float-left mb-30">
                                        <a data-toggle="tab" id="product-tab-03" href="#product-03" class="img"><img src="img/products/03.jpg" class="img-fluid" alt=""></a>
                                    </div>
                                    <div class="single-small-image img-full col-sm-6 float-left mb-30">
                                        <a data-toggle="tab" id="product-tab-04" href="#product-04" class="img"><img src="img/products/04.jpg" class="img-fluid" alt=""></a>
                                    </div>
                                    <div class="single-small-image img-full col-sm-6 float-left mb-xs-30">
                                        <a data-toggle="tab" id="product-tab-05" href="#product-05" class="img"><img src="img/products/05.jpg" class="img-fluid" alt=""></a>
                                    </div>
									<div class="single-small-image img-full col-sm-6 float-left">
                                        <a data-toggle="tab" id="product-tab-06" href="#product-06" class="img"><img src="img/products/06.jpg" class="img-fluid" alt=""></a>
                                    </div>
                                </div>
                            </div>
					
				</div>
                <div class="right-columm col-lg-5 col-md-5">

                <div class="right">
                <h3><?= $product['name'] ?></h3>
                <?php 
                        if(isset($product['properties']) && $product['properties'] != '') 
                        $properties = json_decode($product['properties'],true);   
                       
                    ?>
                <?php if(isset($properties) && $properties != NULL ){?>
                <div class="parameter">
                    <?php foreach($properties as $key => $value){?>
                    <?php if($value['value'] !== '' && $value['name'] !== ''){?>
                    <div class="<?= $key % 2 == 0 ?'second':'' ?>">
                        <strong><?= $value['name'] ?>:</strong>
                        <p><?= $value['value'] ?></p>
                    </div>
                    <?php } ?>
                    <?php } ?>
                </div>
                <?php } ?>
                <div class="button__buy">
                        <div class="button"><button class="add__to__cart btn btn-primary btn-cart m-0" name-product="<?= $product['slug'] ?>">Thêm vào
                                giỏ hàng</button></div>
                        <div class="quantily">
                            <div class="minus"><i class="fa-solid fa-minus"></i></div>
                            <input type="text" min="1" value="1" id="qty__product" name="data_post[qty]">
                            <div class="plus"><i class="fa-solid fa-plus"></i></div>
                        </div>
                    </div>
            </div>


                </div>
                <style>
                    
                </style>
		     
                            </div>
                            
			</div>
            
		</div>
        <div class="product-tab-area float-left w-100">
	<div class="container">
					<div class="tabs">
					<ul class="nav nav-tabs justify-content-start">
						<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#product-tab1" id="tab1"><div class="tab-title">Description</div></a></li>
					</ul>
				</div>
					<div class="tab-content float-left w-100">
					  <div class="tab-pane active" id="product-tab1" role="tabpanel" aria-labelledby="tab1">
						  <div class="description">
                          <?= $product['contents'] ?>
        </div>
        <?php if(isset($product__same) && $product__same != NULL ){?>
      
        <?php } ?>						  </div>
					  </div>
					
							
					</div>
	</div>
	</div>
	</div>
<section class="detail__product">
    <div class="container">
        <div class="block__product">
            <div class="left">
                <h3><?= $product['name'] ?></h3>
                <div class="price">
                    <p><?= number_format($product['price']) ?> vnđ</p>
                    <!-- <p><s>23,000,000 vnđ</s></p> -->
                </div>
                <div class="block__product_detail">
                    <div class="block">
                        <div class="image__box">
                            <img src="<?= $product['image'] ?>" alt="">
                        </div>
                        <?php if(isset($list_images) && $list_images != NULL){?>
                        <div class="list_images">
                            <?php foreach($list_images as $key => $val){?>
                            <div>
                                <img src="<?= $val['image'] ?>" alt="">
                            </div>
                            <?php } ?>
                        </div>
                        <?php } ?>
                    </div>
                    <div class="button__buy">
                        <div class="button"><button class="add__to__cart" name-product="<?= $product['slug'] ?>">Thêm vào
                                giỏ hàng</button></div>
                        <div class="quantily">
                            <div class="minus"><i class="fa-solid fa-minus"></i></div>
                            <input type="text" min="1" value="1" id="qty__product" name="data_post[qty]">
                            <div class="plus"><i class="fa-solid fa-plus"></i></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="right">
                <h3><?= $product['name'] ?></h3>
                <?php 
                        if(isset($product['properties']) && $product['properties'] != '') 
                        $properties = json_decode($product['properties'],true);   
                       
                    ?>
                <?php if(isset($properties) && $properties != NULL ){?>
                <div class="parameter">
                    <?php foreach($properties as $key => $value){?>
                    <?php if($value['value'] !== '' && $value['name'] !== ''){?>
                    <div class="<?= $key % 2 == 0 ?'second':'' ?>">
                        <strong><?= $value['name'] ?>:</strong>
                        <p><?= $value['value'] ?></p>
                    </div>
                    <?php } ?>
                    <?php } ?>
                </div>
                <?php } ?>
            </div>
        </div>
        <!-- <div class="contents__product">
            <?= $product['contents'] ?>
        </div>  -->
        <?php if(isset($product__same) && $product__same != NULL ){?>
        <div class="product__same">
            <h3>Sản phẩm liên quan</h3>
            <div class="list__product">
                <?php foreach($product__same as $value){?>
                <div class="card">
                    <div class="before box">
                        <div class="images">
                            <a href="<?= $value['slug'] ?>"><img src="<?= $value['image'] ?>" alt=""></a>
                        </div>
                        <div class="contents">
                            <a href="<?= $value['slug'] ?>">
                                <p class="title"><?= $value['name'] ?></p>
                                <p class="price">
                                    <span><?= number_format($value['price'])?> vnđ</span>
                                </p>
                                <div class="info">
                                    <?php $contents = json_decode($value['properties'],true); ?>
                                    <?php if(isset($contents) && $contents != NULL){?>
                                    <?php for ($i=0; $i < 5; $i++) {?>
                                    <p><strong><?= $contents[$i]['name'] ?><?= $contents[$i]['name'] ? ':' : '' ?></strong>
                                        <?= $contents[$i]['value'] ?></p>
                                    <?php } ?>
                                    <?php } ?>
                                </div>
                            </a>
                            
                        </div>
                        <!-- <span class="discout">10%</span> -->
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
        <?php } ?>
    </div>
</section>
<script>
// Click +,- qty product
const plus = document.querySelector('.plus');
const minus = document.querySelector('.minus');
const input = document.querySelector('#qty__product');
plus.addEventListener('click', (e) => {
    input.value = Number(input.value) + 1
});
minus.addEventListener('click', (e) => {
    if (Number(input.value) <= 1)
        return input.value = 1;
    input.value = Number(input.value) - 1
});
// list images
// if (document.querySelector('.list_images') !== null) {
//     const preview__images = document.querySelector('.image__box img');
//     const list__boxs = document.querySelectorAll('.box');
//     const list = document.querySelector('.list_images').children;
//     Array.from(list).forEach((v) => {
//         v.addEventListener('click', (e) => {
//             const images = e.target.getAttribute('src');
//             preview__images.setAttribute('src', images);
//         })
//     });

// }

// 
document.querySelector('.add__to__cart').addEventListener('click', (e) => {
    const qty = document.querySelector('input[name="data_post[qty]"]').value;
    const slug = e.target.getAttribute('name-product');
    let xhr = new XMLHttpRequest();
    let total__Price = 0;
    xhr.open('POST', 'home/addtocart');
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhr.onload = function(e) {
        let list__items_cart = document.querySelector('.list__items_cart');
        const response = JSON.parse(this.responseText);

        document.querySelector('.total_qty').innerHTML = response.data.length;
        if (response.code == 200) {
            const div = document.createElement('div');
            div.innerHTML =
                `<div class="message"> <p class="text-success">Thêm vào giỏ hàng thành công</p></div>`
            document.body.appendChild(div);
            setTimeout(() => {
                document.querySelector('.message').remove();
            }, 2000);
            let element = '';
            response.data.map((v) => {
                total__Price += parseInt(v.qty * v.price)
                element += `
                    <div class="item">
                        <div class="box__one">
                            <div class="image">
                                <img src="${v.image}" alt="">
                            </div>
                            <div class="name__product">
                                <p>${v.name} </p>
                                <p>${formatMoney(v.price)} đ</p>
                            </div>
                        </div>
                        <div class="box__two">
                            <p>Số lượng:  <span>${v.qty}</span></p>
                        </div>
                        <div class="box__tree">
                             <a href="javascript:void(0)" onClick="deleteItem(${v.productID})"><i data-id="${v.productID}" class="fa-solid fa-trash"></i></a>
                        </div>
                    </div>
                    `
            });
            list__items_cart.innerHTML = element;
            document.getElementById('total_Price_header').innerHTML = total__Price.format(0)
        }
    }
    xhr.send(`qty=${qty}&slug=${slug}`)
});

function formatMoney(__this) {
    let val = __this;
    let num = val.replace(/[^\d.]/g, "");
    let arr = num.split('.');
    let val_num = arr[0];
    let len = val_num.length;
    let result = '';
    let j = 0;
    for (let index = len; index > 0; index--) {
        j++;
        if (j % 3 == 1 && j != 1) {
            result = val_num.substr(index - 1, 1) + ',' + result;
        } else {
            result = val_num.substr(index - 1, 1) + result;
        }
    }
    return result
}
</script>