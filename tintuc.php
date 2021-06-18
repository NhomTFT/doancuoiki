<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mobile Shopping</title>
    <link rel="shortcut icon" href="img/favicon.ico" />

    <!-- Load font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
        crossorigin="anonymous">

    <!-- our files -->
    <!-- css -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/topnav.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/taikhoan.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/tintuc.css">

    <!-- js -->
    <script src="data/products.js"></script>
	<script src="js/dungchung.js"></script>
    <script>
        window.onload = function () {
            khoiTao();
            // thêm tags (từ khóa) vào khung tìm kiếm
            var tags = ["Samsung", "iPhone", "Huawei", "Oppo", "Mobi"];
            for (var t of tags) addTags(t, "index.html?search=" + t);
        }
    </script>
       <link rel="icon" href="images/logo.png" type="image/icon type">
       <link href="css/bootstrap.min.css" rel="stylesheet">
       <link href="css/font-awesome.min.css" rel="stylesheet">
       <link href="css/prettyPhoto.css" rel="stylesheet">
       <link href="css/price-range.css" rel="stylesheet">
       <link href="css/animate.css" rel="stylesheet">
       <link href="css/main.css" rel="stylesheet">
       <link href="css/responsive.css" rel="stylesheet">
       <!--[if lt IE 9]>
       <script src="js/html5shiv.js"></script>
       <script src="js/respond.min.js"></script>
       <![endif]-->
       <link rel="shortcut icon" href="images/ico/favicon.ico">
       <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
       <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
       <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
       <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
       <link rel="stylesheet" type="text/css" href="css/styles.css">
   </head>
   <!--/head-->
   <?php
       require "models/db.php";
       require "models/product.php";
       require "models/protype.php";
       require "models/manufacture.php";
       require "models/page.php";
       $product = new Product();
       $manufacture = new Manufacture();
       $protype = new Protype();
       //
       $perpage = 6; // hiển thị 3 sản phẩm trên 1 trang
       $pages = $product->getTotalOfProductFeature();
       $total = $pages['total'];
       if(isset($_GET['current_page'])) {
           $current_page = $_GET['current_page'];
       }
       else {
           $current_page = 1;
       } // Lấy số trang trên thanh địa chỉ
        // Tính tổng số dòng, ví dụ kết quả là 18
       $offset = 2;
       $url = $_SERVER['PHP_SELF']; 
       //
       $page = new Page($url,$current_page,$perpage,$total,$offset);   
   ?>

</head>

<body>
    <div class="header-bottom">
        <!--header-bottom-->
        <div class="container-fluid" style="margin-bottom:5px;">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span
                                class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                        </button>
                        <div class="logo"> <a href="index.php"><img src="images/logo.png" alt="" /></a> </div>
                    </div>
                    <div class="mainmenu pull-right">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li><a href="index.php" class="active">Trang Chủ</a></li>
                            <li class="dropdown"><a href="index.php">Sản Phẩm<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">                                    
                                    <?php                                      
                                        $prodarr = $protype->getAllProtype();
                                        foreach ($prodarr as $key) {  
                                            if(isset($_GET['manu_id']))
                                            {
                                                $manu_id = $_GET['manu_id'];
                                        ?>
                                            <li><a href="cate.php?manu_id=<?php echo $manu_id ?>&type_id=<?php echo $key['type_id'] ?>"><?php echo $key['type_name'] ?></a><li>
                                     <?php } 
                                            else {                                               
                                    ?>
                                            <li><a href="cate.php?type_id=<?php echo $key['type_id'] ?>"><?php echo $key['type_name'] ?></a><li>
                                <?php } } ?>                                                             
                                </ul>
                            </li>
                            <li><a href="tintuc.php">Tin Tức</a></li>
                            <li><a href="tuyendung.php">Tuyển Dụng</a></li>
                            <li><a href="trungtambaohanh.php">Bảo Hành</a></li>
                            <li><a href="lienhe.php">Liên Hệ</a></li>
                            <li><a href="cart.php">Giỏ Hàng</a></li>
                            <?php
                                if(!isset($_SESSION['user'])){
                                    echo '<li><a href="Login\login.php">Đăng nhập</a></li>';
                                }else{
                                    echo'<li><a href="models\logout.php">Đăng xuất</a></li>';
                                }
                            ?>
                        </ul>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
    <img src="img/banners/blackFriday.gif" alt="" style="width: 100%; height:150px ;">
    </div>
<div class="container">
        <div class="body-tintuc">
            <div class="tintuc-info">
                <a href="http://doanhnghiepvn.vn/cong-nghe/danh-gia-smartphone-chip-s660-ram-8-gb-gia-6-99-trieu-tai-viet-nam/2018112603315443" target="_blank">
                    <img src="img/tintuc/tintuc1.png">
                    <h2>Đánh giá smartphone chip S660, RAM 8 GB, giá 6,99 triệu tại Việt Nam</h2>
                </a>
                <br/>
                <h5>Doanh ngiệp &emsp;3 giờ</h5>
            </div>
            <div class="tintuc-info">
                <a href="https://thanhnien.vn/cong-nghe/kham-pha-smartphone-man-hinh-gap-duoc-dau-tien-cua-samsung-1027111.html" target="_blank">
                    <img src="img/tintuc/tintuc2.png">
                    <h2>Khám phá smartphone màn hình gập được đầu tiên của Samsung</h2>
                </a>
                <br/>
                <h5>Thanh niên &emsp; 6 giờ</h5>
            </div>
            <div class="tintuc-info">
                <a href="https://vov.vn/cong-nghe/doanh-so-iphone-xs-va-iphone-xr-tham-hai-apple-san-xuat-lai-iphone-x-843717.vov" target="_blank">
                    <img src="img/tintuc/tintuc3.png">
                    <h2>Doanh số iPhone XS và iPhone XR thảm hại, Apple sản xuất lại iPhone X</h2>
                </a>
                <br/>
                <h5>VOV &emsp; 6 giờ</h5>
            </div>
            <div class="tintuc-info">
                <a href="http://vietq.vn/chiec-dien-thoai-thong-minh-nay-cua-lg-se-co-toi-16-camera-d151674.html" target="_blank">
                    <img src="img/tintuc/tintuc4.png">
                    <h2>Chiếc điện thoại thông minh này của LG sẽ có tới 16 Camera</h2>
                </a>
                <br/>
                <h5>VietQ &emsp; 13 giờ</h5>
            </div>
            <div class="tintuc-info" style="border-bottom: 0;">
                <a href="https://news.zing.vn/nhung-tieu-chi-ban-khong-nen-bo-qua-khi-mua-smartphone-2018-post894509.html" target="_blank">
                    <img src="img/tintuc/tintuc5.png" height="148px" width="224px;">
                    <h2>Những tiêu chí bạn không nên bỏ qua khi mua smartphone 2018</h2>
                </a>
                <br/>
                <h5>Zing &emsp; 9 giờ</h5>
            </div> 

        </div>

    </section>

    <script> addContainTaiKhoan(); </script>

    <div class="footer">
        <script>addFooter();</script>
        
    </div>

    <i class="fa fa-arrow-up" id="goto-top-page" onclick="gotoTop()"></i>
    </div>
    <footer id="footer">
        <!--Footer-->
        <div class="footer-bottom">


            <div class="container">
                <div class="row">
                    <p class="pull-left">MOBILE SHOPPING © 2021 HCMUE.</p>
                    <p class="pull-right">Designed by <span><a target="_blank"
                                href="http://www.themeum.com">HCMUE</a></span></p>
                </div>
            </div>
        </div>
    </footer>
</body>

</html>