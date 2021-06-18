<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Liên hệ - Thế giới điện thoại</title>
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
    <link rel="stylesheet" href="css/lienhe.css">

    <!-- js -->
    <script src="data/products.js"></script>
    <script src="js/dungchung.js"></script>
    <script src="js/lienhe.js"></script>

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
        <div class="body-lienhe">
            <div class="lienhe-header">Liên hệ</div>
            <div class="lienhe-info">
                <div class="info-left">
                    <p>
                        <h2 style="color: gray"> CÔNG TY MOBILE SHOPPING </h2><br />
                        <b>Địa chỉ:</b> 280 An Dương Vương, phường 3, Quận 5, TPHCM<br /><br />
                        <b>Telephone:</b> 0123456789<br /><br />
                        <b>Hotline:</b> 097777777 - CSKH: 028 9996 777<br /><br />
                        <b>Website:</b> <a href="https://github.com/HoangTran0410/DoAn_Web1">Github</a> <br /><br />
                        <b>E-mail:</b> lanhoxga@gmail.com<br /><br />
                        <b>Mã số thuế:</b> 01 02 03 04 05<br /><br />
                        <b>Tài khoản ngân hàng :</b><br /><br />
                        <b>Số TK:</b> 0123456789 <br /><br />
                        <b>Tại Ngân hàng:</b> Agribank Chi nhánh Sài Gòn<br /><br /><br /><br />
                        
                    </p>
                </div>
                <div class="info-right">
                    <iframe width="100%" height="450" src="https://maps.google.com/maps?width=100%&amp;height=100px&amp;hl=en&amp;coord=10.759660000323064,106.68192160315813&amp;q=273%20An%20D%C6%B0%C6%A1ng%20V%C6%B0%C6%A1ng%20Ph%C6%B0%E1%BB%9Dng%203%20Qu%E1%BA%ADn%205%20H%E1%BB%93%20Ch%C3%AD%20Minh%20700000%2C%20Vi%E1%BB%87t%20Nam+(My%20Business%20Name)&amp;ie=UTF8&amp;t=&amp;z=16&amp;iwloc=B&amp;output=embed"
                        frameborder="0" scrolling="no" marginheight="0" marginwidth="0"><a href="https://www.maps.ie/create-google-map/">Embed
                            Google Map
                        </a>
                    </iframe>
                    <br />
                </div>
            </div>
            <div class="lienhe-info">
            </div>
        </div>
    </section>

    <script>
        addContainTaiKhoan();
    </script>

    <div class="footer">
        <script>
            addFooter();
        </script>

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
