<!doctype html>
<html lang="en">
  <head>
  	    <title>Fashion Template for Bootstrap</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Demo powered by Templatetrip">
    <meta name="author" content="">
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,500,700,900" rel="stylesheet"> 
	
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">	
	<!-- Bootstrap core CSS -->
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

    <!-- Custom styles for this template -->
  </head>
<style>
	.show__cart{
		z-index: 10;
	}
</style>
  <body class="index layout1">
  	
	<header class="header-area header-sticky text-center header-default">
	<div class="header-main-sticky">
	<div class="header-nav">
	<div class="container">
		<div class="nav-left float-left"><div class="ttheader-service"></div>
		</div>
		<div class="nav-right float-right d-flex">
		<div class="box">
                    <div class="button_sign">
                        <?php if(isset($_SESSION['user']) && $data_index['user'] !== null) {?>
                        <div class="avatar">
                            <div class="images">
                                <img src="./public/uploads/images/avatar2.png" alt="" width="15px" height="15px">
                            </div>
							<?= ($data_index['user']['username']) ?>
                            <div class="selection__info">
                                <div><a href="thong-tin-chung.html" target="_blank">Thông tin chung</a></div>
                                <div><a href="doi-mat-khau.html" target="_blank">Đổi mật khẩu</a></div>
                                <div>
                                    <a href="dang-xuat.html">Đăng
                                        xuất</a>
                                </div>
                            </div>
                        </div>
                        

                        <?php } else {?>
                        <a href="dang-ky.html" class="register">Đăng ký</a>
                        <a href="dang-nhap.html" class="login">Đăng nhập</a>
                        <?php } ?>
                    </div>
                </div>
		</div>
	</div>
	</div>
	<div class="header-main-head">
	
    <div class="header-main">
	<div class="container">
            <div class="header-left float-left d-flex d-lg-flex d-md-block d-xs-block">
				<div class="language-wrapper toggle">
				<button type="button" class="btn text-capitalize dropdown-toggle"><img src="public/lib_fronend/img/banner/en.png" alt="en" height="12" width="18"/><span>English</span></button>
					<div id="language-dropdown" class="language">
					<ul>
								<li><img src="public/lib_fronend/img/banner/en.png" alt="en" width="18" height="12"/><span>English</span></li>
								<li><img src="public/lib_fronend/img/banner/fr.png" alt="fr" width="18" height="12"/><span>French</span></li>
					</ul>
					</div>
				</div>
				<div class="currency-wrapper toggle">
				<button type="button" class="btn text-capitalize dropdown-toggle"><span>€ Euro</span></button>
					<div id="currency-dropdown" class="currency">
					<ul>
							<li><span>€ Euro</span></li>
							<li><span>£ Pound Sterling</span></li>
							<li><span>$ US Dollar</span></li>
					</ul>
					</div>
				</div>
				  <div class="contact">
						<i class="material-icons">phone</i>
						<a href="tel:+1234567890">1234567890</a>
				  </div>
			</div>
		<div class="header-middle float-lg-left float-md-left float-sm-left float-xs-none">
				<div class="logo">
								<a href="index.html"><img src="public/lib_fronend/img/logos/logo.png" alt="logo" width="200" height="50" ></a>		</div>
		</div> 
		<div class="header-right d-flex d-xs-flex d-sm-flex justify-content-end float-right">
		<div class="search-wrapper"> 
			
		
		</div>  
	
		<div class="cart-wrapper">
		<div class="cart">
                        <a href="javascript:void(0)" class="open__cart">
						<i class="material-icons">shopping_cart</i>
                            <span class="total_qty"><?= count($data_index['cart']); ?></span>
                        </a>
                        <!-- <div class="list__items_cart">
                            <?php if(isset($data_index['cart']) && $data_index !== NULL){?>
                                <?php foreach($data_index['cart'] as $key => $val){?>
                                    <div class="item">
                                        <div class="image">
                                            <img src="<?= $val['image'] ?>" alt="">
                                        </div>
                                        <div class="name__product">
                                            <p><?= $val['name'] ?> </p>
                                            <p><?= number_format($val['price']) ?> đ</p>
                                        </div>
                                        <div class="quantily">
                                            <span class="qty"><?= $val['qty'] ?></span>
                                        </div>
                                </div>
                                <?php } ?>
                            <?php } ?>
                        </div> -->
                    </div>

                </div>
		</div>
		</div>
	</div>
	</div> 
	
	<div class="menu">
	<div class="container">
		
		<!-- Navbar -->
		<nav class="navbar navbar-expand-lg navbar-light d-sm-none d-xs-none d-lg-block navbar-full">
		
		<!-- Navbar brand -->
		<a class="navbar-brand text-uppercase d-none" href="#">Navbar</a>
		
		<!-- Collapse button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent2"
		aria-controls="navbarSupportedContent2" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
		</button>
		
		<!-- Collapsible content -->
		<div class="collapse navbar-collapse">
		
		<!-- Links -->
		<ul class="navbar-nav m-auto justify-content-center">
		<li class="nav-item dropdown active">
		<a class="nav-link dropdown-toggle text-uppercase" href="category.html">
			Home
		 </a>
		
		</li>
		<li class="nav-item dropdown mega-dropdown">
		<a class="nav-link dropdown-toggle text-uppercase" href="category.html">Category</a>
		<div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3">
		  <div class="row">
			<div class="col-md-12 col-xl-4 sub-menu mb-xl-0 mb-4">
				<style>
					ul{
list-style-type:none;
}
				</style>
			  <h6 class="sub-title text-uppercase font-weight-bold white-text">Variation 1</h6>
			  <!--Featured image-->
			  <?php if($data_index['menu'] !== NULL){?>
                    <ul class="list-unstyled">
                        <?php foreach($data_index['menu'] as $key => $val){?>
                        <li><a class="menu-item pl-0"
                                href="<?= isset($val['children']) && $val['children'] != null ? 'javascript:void(0)': $val['url'] ?>"><?= $val['name'] ?></a>
                            <?php if($val['children'] != null){?>
                            <ul class="nav__children">
                                <?php  foreach($val['children'] as $val_Child){?>
                                <li class="menu-item pl-0"><a class="menu-item pl-0" href="<?= $val_Child['url'] ?>"><?= $val_Child['name'] ?></a></li>
                                <?php } ?>
                            </ul>
                            <?php } ?>
                        </li>
                        <?php } ?>
                    </ul>
                    <?php } ?>
			</div>
			
			<div class="col-md-6 col-xl-4 sub-menu mb-0">
		
					<ul class="list-unstyled">
				<li>
					<span class="menu-banner"><img src="public/lib_fronend/img/banner/menu-banner.jpg" alt="menu-banner" width="161" height="230"/></span>                </li>
			  </ul>
			</div>
		  </div>
		</div>
		</li>
		<li class="nav-item dropdown">
		<a class="nav-link dropdown-toggle text-uppercase" href="contact.html">
			Contact
		 </a>
	
		</li>
		<li class="nav-item dropdown">   
		<a class="nav-link dropdown-toggle text-uppercase" href="category.html">Blog</a>
		<div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3">
			<div class="sub-menu">
			  <h6 class="sub-title text-uppercase font-weight-bold white-text d-none">Featured</h6>
			<ul class="list-unstyled">
				  <li>
				  <a class="menu-item pl-0" href="blog-2-column.html">
					blog 2 column                  </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="blog-3-column.html">
				   blog 3 column                  </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="blog-2-column-masonary.html">
				   blog masonary                 </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="blog-list.html">
					blog list                  </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="blog-details.html">
				   blog details                  </a>                </li>
			  </ul>
			</div>
		</div>
		</li>
		<li class="nav-item dropdown">   
		<a class="nav-link dropdown-toggle text-uppercase" href="category.html">Pages</a>
		<div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3">
			<div class="sub-menu">
			<ul class="list-unstyled">
				 <li>
				  <a class="menu-item pl-0" href="about-us.html">
					About us                 </a>				 </li>
					<li>
				  <a class="menu-item pl-0" href="accordions.html">
					Accordions                  </a>                </li>
	              <li>
				  <a class="menu-item pl-0" href="buttons.html">
				   Buttons              </a>                </li>
			  </ul>
			</div>
		</div>
		</li>
		<li class="nav-item dropdown">
		<a class="nav-link text-uppercase" href="contact.html">contact us</a>      </li>
		</ul>
		<!-- Links -->
		</div>
		<!-- Collapsible content -->
		
		</nav>
		<!-- Navbar -->
		<nav class="navbar navbar-expand-lg navbar-light d-lg-none navbar-responsive">
		
		<!-- Navbar brand -->
		<a class="navbar-brand text-uppercase d-none" href="#">Navbar</a>
		
		<!-- Collapse button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent2"
		aria-controls="navbarSupportedContent2" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"><i class='material-icons'>sort</i></span>
		</button>
		
		<!-- Collapsible content -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent2">
		
		<!-- Links -->
		<ul class="navbar-nav m-auto justify-content-center">
		
		<!-- Features -->
		<li class="nav-item dropdown active">
		<a class="nav-link dropdown-toggle text-uppercase" data-toggle="collapse" data-target="#menu1"
		aria-controls="menu1" aria-expanded="false" aria-label="Toggle navigation" href="#">
			Home
		  <span class="sr-only">(current)</span>        </a>
		<div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3" id="menu1">
			<div class="sub-menu mb-xl-0 mb-4">
			  <ul class="list-unstyled">
				<li>
				  <a class="menu-item pl-0" href="index.html">
					Home 1                  </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="index2.html">
				   Home 2                  </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="index3.html">
					Home 3                 </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="index4.html">
					Home 4                  </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="index5.html">
					Home 5                  </a>                </li>
			  </ul>
			</div>
		</div>
		</li>
		<li class="nav-item dropdown mega-dropdown">
		<a class="nav-link dropdown-toggle text-uppercase" data-toggle="collapse" data-target="#menu3"
		aria-controls="menu3" aria-expanded="false" aria-label="Toggle navigation" href="#">Category</a>
		<div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3" id="menu3">
		  <div class="row">
			<div class="col-md-12 col-xl-4 sub-menu mb-xl-0 mb-4">
			  <h6 class="sub-title text-uppercase font-weight-bold white-text">Variation 1</h6>
			  <!--Featured image-->
			  <ul class="list-unstyled">
				 <li>
				  <a class="menu-item pl-0" href="filter-toggle.html">
					filter toggle                  </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="off-canvas-left.html">
					off canvas left                </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="off-canvas-right.html">
					off canvas right                </a>                </li>
			  </ul>
			</div>
			<div class="col-md-6 col-xl-4 sub-menu mb-md-0 mb-4">
			  <h6 class="sub-title text-uppercase font-weight-bold white-text">Variation 2</h6>
				<ul class="list-unstyled">
				<li>
				  <a class="menu-item pl-0" href="category-5-col.html">
					grid 5 column                 </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="category-6-col.html">
				   grid 6 column                  </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="category-7-col.html">
					grid 7 column                   </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="category-8-col.html">
					grid 8 column                </a>                </li>
			  </ul>
			</div>
			<div class="col-md-6 col-xl-4 sub-menu mb-0">
		
					<ul class="list-unstyled">
				<li>
					<span class="menu-banner"><img src="public/lib_fronend/img/banner/menu-banner.jpg" alt="menu-banner" width="210" height="300"/></span>                </li>
			  </ul>
			</div>
		  </div>
		</div>
		</li>
		
		<li class="nav-item dropdown">
		<a class="nav-link dropdown-toggle text-uppercase" data-toggle="collapse" data-target="#menu2"
		aria-controls="menu2" aria-expanded="false" aria-label="Toggle navigation" href="#">
			Shop
		  <span class="sr-only">(current)</span>        </a>
		<div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3" id="menu2">
			<div class="sub-menu mb-xl-0 mb-4">
			  <h6 class="sub-title text-uppercase font-weight-bold white-text">Featured</h6>
			  <ul class="list-unstyled">
				<li>
				  <a class="menu-item pl-0" href="product-grid.html">
					product grid                </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="product-sticky-right.html">
				   sticky right                  </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="product-extended-layout.html">
					Extended layout                 </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="product-details.html">
					Default layout                </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="product-compact.html">
					compact layout           </a>                </li>
			  </ul>
			</div>
		</div>
		</li>
		<!-- Technology -->
		
		
		
		<li class="nav-item dropdown">   
		<a class="nav-link dropdown-toggle text-uppercase"  data-toggle="collapse" data-target="#menu4"
		aria-controls="menu4" aria-expanded="false" aria-label="Toggle navigation" href="#">Blog</a>
		<div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3" id="menu4">
			<div class="sub-menu">
			  <h6 class="sub-title text-uppercase font-weight-bold white-text d-none">Featured</h6>
			<ul class="list-unstyled">
				  <li>
				  <a class="menu-item pl-0" href="blog-2-column.html">
					blog 2 column                  </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="blog-3-column.html">
				   blog 3 column                  </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="blog-2-column-masonary.html">
				   blog masonary                 </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="blog-list.html">
					blog list                  </a>                </li>
				<li>
				  <a class="menu-item pl-0" href="blog-details.html">
				   blog details                  </a>                </li>
			  </ul>
			</div>
		</div>
		</li>
		
		<li class="nav-item dropdown">
		<a class="nav-link text-uppercase" href="contact-us.html">contact us</a>      </li>
		
		<li class="nav-item dropdown">   
		<a class="nav-link dropdown-toggle text-uppercase"  data-toggle="collapse" data-target="#menu5"
		aria-controls="menu5" aria-expanded="false" aria-label="Toggle navigation" href="#">Pages</a>
		<div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3" id="menu5">
			<div class="sub-menu">
			  <h6 class="sub-title text-uppercase font-weight-bold white-text d-none">Featured</h6>
			<ul class="list-unstyled">
				  <li>
				  <a class="menu-item pl-0" href="about-us.html">
					About us                 </a>				 </li>
					<li>
				  <a class="menu-item pl-0" href="accordions.html">
					Accordions                  </a>                </li>
	              <li>
				  <a class="menu-item pl-0" href="buttons.html">
				   Buttons              </a>                </li>
			  </ul>
			</div>
		</div>
		</li>
		</ul>
		<!-- Links -->
		</div>
		<!-- Collapsible content -->
		
		</nav>
	</div>
	</div>
	</div>
	</div>
	</header>
 

