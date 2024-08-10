<?php require_once './mvc/views/frontend/home/layout/slide.php' ?>
<!-- sản phẩm -->
<style>
            .card::after
            {
                border: 0px  !important;
                background-color: white !important;
            }
            .card::before
            {
                border: 0px  !important;
                background-color: white  !important;
            }
            .after{
                border: 0px  !important;
                background-color: white  !important; 
            }
            .show__cart{
                background-color: white !important;
            }
        </style>
        <?php if(isset($product) && $product != NULL){?>
<section class="product">
    <div class="container">
        <div class="title__product">
            <h3>Nike</h3>
        </div>
       
        <div class="list__product">
            <?php foreach($product_nike as $value){?>
            <div class="card">
                <div class="before box">
                    <div class="images">
                        <a href="<?= $value['slug'] ?>"><img src="<?= $value['image'] ?>" alt=""></a>
                    </div>
                    <div class="contents">
                        <a href="<?= $value['slug'] ?>">
                            <p class="title"><?= $value['name'] ?></p>
                            <p class="price">
                                <!-- <s>200.000 đ</s> -->
                                <span><?= number_format($value['price']).'đ'; ?></span>
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
</section>
<?php } ?>
        <!-- ////////////////////////////////////////////////////////////////////////////////////////// -->
        <?php if(isset($product) && $product != NULL){?>
<section class="product">
    <div class="container">
        <div class="title__product">
            <h3>Puma</h3>
        </div>
       
        <div class="list__product">
            <?php foreach($product_puma as $value){?>
            <div class="card">
                <div class="before box">
                    <div class="images">
                        <a href="<?= $value['slug'] ?>"><img src="<?= $value['image'] ?>" alt=""></a>
                    </div>
                    <div class="contents">
                        <a href="<?= $value['slug'] ?>">
                            <p class="title"><?= $value['name'] ?></p>
                            <p class="price">
                                <!-- <s>200.000 đ</s> -->
                                <span><?= number_format($value['price']).'đ'; ?></span>
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
</section>
<?php } ?>
        <!-- ////////////////////////////////////////////////////////////////////////////////////////// -->
        <?php if(isset($product) && $product != NULL){?>
<section class="product">
    <div class="container">
        <div class="title__product">
            <h3>Adidas</h3>
        </div>
       
        <div class="list__product">
            <?php foreach($product_adidas as $value){?>
            <div class="card">
                <div class="before box">
                    <div class="images">
                        <a href="<?= $value['slug'] ?>"><img src="<?= $value['image'] ?>" alt=""></a>
                    </div>
                    <div class="contents">
                        <a href="<?= $value['slug'] ?>">
                            <p class="title"><?= $value['name'] ?></p>
                            <p class="price">
                                <!-- <s>200.000 đ</s> -->
                                <span><?= number_format($value['price']).'đ'; ?></span>
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
</section>
<?php } ?>
 <!-- ////////////////////////////////////////////////////////////////////////////////////////// -->
 <?php if(isset($product) && $product != NULL){?>
<section class="product">
    <div class="container">
        <div class="title__product">
            <h3>Thượng đình</h3>
        </div>
       
        <div class="list__product">
            <?php foreach($product_thuongdinh as $value){?>
            <div class="card">
                <div class="before box">
                    <div class="images">
                        <a href="<?= $value['slug'] ?>"><img src="<?= $value['image'] ?>" alt=""></a>
                    </div>
                    <div class="contents">
                        <a href="<?= $value['slug'] ?>">
                            <p class="title"><?= $value['name'] ?></p>
                            <p class="price">
                                <!-- <s>200.000 đ</s> -->
                                <span><?= number_format($value['price']).'đ'; ?></span>
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
</section>
<?php } ?>
        <!-- ////////////////////////////////////////////////////////////////////////////////////////// --> <!-- ////////////////////////////////////////////////////////////////////////////////////////// -->
        <!-- ////////////////////////////////////////////////////////////////////////////////////////// -->
<?php if(isset($product) && $product != NULL){?>
<section class="product">
    <div class="container">
        <div class="title__product">
            <h3>Sản phẩm</h3>
        </div>
       
        <div class="list__product">
            <?php foreach($product as $value){?>
                <style>
                    .card{
                        border: 1px #333 solid;
                    }
                </style>
            <div class="card" >
                <div class="before box">
                    <div class="images" class="card-img-top" >
                        <a href="<?= $value['slug'] ?>"><img class="card-img-top" src="<?= $value['image'] ?>" alt="" width="100%" height="100%" ></a>
                    </div>
                    <div class="contents">
                        <a href="<?= $value['slug'] ?>">
                            <p class="title"><?= $value['name'] ?></p>
                            <p class="price">
                                <!-- <s>200.000 đ</s> -->
                                <span><?= number_format($value['price']).'đ'; ?></span>
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
</section>
<?php } ?>
<?php // require_once './mvc/views/frontend/home/layout/contact.php' ?>