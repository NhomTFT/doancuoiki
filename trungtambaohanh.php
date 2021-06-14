<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Trung tâm bảo hành - Thế giới điện thoại</title>
    <link rel="shortcut icon" href="img/favicon.ico" />

    <!-- Load font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
        crossorigin="anonymous">

    <!-- our files -->
    <!-- css -->
    
    <link rel="stylesheet" href="css/baohanh.css">
    <!-- js -->
    <script src="data/products.js"></script>
	<script src="js/dungchung.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Mobile Shopping</title>
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
                        </ul>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
    <img src="img/banners/blackFriday.gif" alt="" style="width: 100%; height:150px ;">
    </div>

    <!-- tìm kiếm -->


    <!--/header-bottom-->
    </header>
   <div class="container">
        <table>
            <tr>
                <td colspan="4" class="header-table">
                    <marquee behavior="scroll" direction=left>Các trung tâm bảo hành của Smartphone Store</marquee>
                </td>
            </tr>
            <tr>
                <th class="col1">STT</th>
                <th class="col2">Địa chỉ</th>
                <th class="col3">Điện thoại</th>
                <th class="col4">Thời gian làm việc</th>
            </tr>

            <script>
                var trungtam = [
                    ["10F2, Hồ Trung Thành, P7 – Tp. Cà Mau, Tỉnh Cà Mau"       , "(0780)-2212 158" , "8h00 - 17h00"],
                    ["14A2 Trần Nguyên Hãn, P.Mỹ Long, Long Xuyên, An Giang"    , "076.3841649"     , "8h00 - 17h00"],
                    ["114 Tô Hiệu, Quận Lê Chân, Tp. Hải Phòng"                 , "(031)-384 7689"  , "8h00 - 17h00"],
                    ["32 Lương Khánh Thiện, Tp. Hải phòng"                      , "0924713257"      , "8h00 - 17h00"],
                    ["123 Nam Kỳ Khởi Nghĩa, Tp. Vũng Tàu, Tỉnh BRVT"           , "(064)-3531 248"  , "8h00 - 17h00"],
                    ["157 Ngô Gia Tự, Phường Ngô Quyền, TP Bắc Giang"           , "(0240)-3820 349" , "8h00 - 17h00"],
                    ["32 Lương Khánh Thiện, Tp. Hải phòng"                      , "(0781)-3827 676" , "8h00 - 17h00"],
                    ["139 Nguyễn Văn Cừ, Tp. Bắc Ninh, Tỉnh Bắc Ninh"           , "(0241)-3812767"  , "8h00 - 17h00"],
                    ["39 Nguyễn Đình Chiểu, P 1, Tx. Bến Tre, Tỉnh Bến Tre"     , "(075)-3814 701"  , "8h00 - 17h00"],
                    ["10A, Lý Thường Kiệt, Tp. Quy Nhơn, Tỉnh Bình Định"        , "(056)-3821 788"  , "8h00 - 17h00"],
                    ["42 Phố 11 Vân Giang, P. Vân Giang, Tp. Ninh Bình"         , "(030)-389 3408"  , "8h00 - 17h00"],
                    ["283 Cách Mạng Tháng Tám, TX.Thủ Dầu Một, Tỉnh Bình Dương" , "0650.3831528"    , "8h00 - 17h00"],
                    ["47 Khu 2, P. Phước Bình, Tx. Phước Long, Bình Phước"      , "(0651)-3774 789" , "8h00 - 17h00"],
                    ["20 Nguyễn Hội P.Phú Trinh Tp.Phan Thiết, Tỉnh Bình Thuận" , "062.382853"      , "8h00 - 17h00"],
                    ["76 Nguyễn Đình Chiểu, P 2, Tp. Cao Lãnh, Đồng Tháp"       , "(067)-3874 686"  , "8h00 - 17h00"]
                ]

                for (var i = 0; i < trungtam.length; i++) {
                    var link = 'https://maps.google.com/maps?q=' + trungtam[i][0];
                    document.write(`
                        <tr>
                            <td class="col1">` + (i + 1) + `</td>
                            <td class="col2"> 
                                <a href="`+link+`" target="_blank" title="Xem bản đồ">
                                    ` + trungtam[i][0] +`
                                </a>
                            </td>
                            <td class="col3">` + trungtam[i][1] +`</td>
                            <td class="col4">` + trungtam[i][2] +`</td>
                        </tr>
                    `)
                }
            </script>
        </table>

    </section>

    <script>addContainTaiKhoan(); </script>

    <div class="footer">
            <script>addFooter();</script>
    </div>

    <i class="fa fa-arrow-up" id="goto-top-page" onclick="gotoTop()"></i>
    </div>
</body>

</html>