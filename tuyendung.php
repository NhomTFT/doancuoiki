<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mobile Shopping</title>
    <link rel="shortcut icon" href="img/favicon.ico" />

    <!-- Load font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" crossorigin="anonymous">

    <!-- our files -->
    <!-- css -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/topnav.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/taikhoan.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/tintuc.css">
    <link rel="stylesheet" href="css/tuyendung.css">

    <!-- js -->
    <script src="data/products.js"></script>
    <script src="js/dungchung.js"></script>
    <script>
        window.onload = function() {
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
if (isset($_GET['current_page'])) {
    $current_page = $_GET['current_page'];
} else {
    $current_page = 1;
} // Lấy số trang trên thanh địa chỉ
// Tính tổng số dòng, ví dụ kết quả là 18
$offset = 2;
$url = $_SERVER['PHP_SELF'];
//
$page = new Page($url, $current_page, $perpage, $total, $offset);
?>

</head>

<body>
    <div class="header-bottom">
        <!--header-bottom-->
        <div class="container-fluid" style="margin-bottom:-20px; ">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
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
                                        if (isset($_GET['manu_id'])) {
                                            $manu_id = $_GET['manu_id'];
                                    ?>
                                            <li><a href="cate.php?manu_id=<?php echo $manu_id ?>&type_id=<?php echo $key['type_id'] ?>"><?php echo $key['type_name'] ?></a>
                                            <li>
                                            <?php } else {
                                            ?>
                                            <li><a href="cate.php?type_id=<?php echo $key['type_id'] ?>"><?php echo $key['type_name'] ?></a>
                                            <li>
                                        <?php }
                                    } ?>
                                </ul>
                            </li>
                            <li><a href="tintuc.php">Tin Tức</a></li>
                            <li><a href="tuyendung.php">Tuyển Dụng</a></li>
                            <li><a href="trungtambaohanh.php">Bảo Hành</a></li>
                            <li><a href="lienhe.php">Liên Hệ</a></li>
                            <li><a href="cart.php">Giỏ Hàng</a></li>
                            <?php
                            if (!isset($_SESSION['user'])) {
                                echo '<li><a href="Login\login.php">Đăng nhập</a></li>';
                            } else {
                                echo '<li><a href="models\logout.php">Đăng xuất</a></li>';
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
        <div class="body-tuyendung">
            <div class="tuyendung-header">Tuyển dụng</div>
            <div class="tuyendung-info">
                <h1 class="tieude">NHÂN VIÊN BÁN HÀNG</h1><br />

                <b>1.MÔ TẢ</b>
                <ul class="tuyendung-noidung">
                    <li>Vui vẻ, lịch sự chào đón khi khách vào cửa hàng.</li>
                    <li>
                        Tìm hiểu nhu cầu, tư vấn các thông tin về: Sản phẩm, dịch vụ, chương trình khuyến mãi, hậu mãi cho khách hàng.
                    </li>
                    <li>Sắp xếp sản phẩm gọn gàng, hợp lý, vệ sinh cửa hàng khi hết ca làm việc.</li>
                    <li>Nắm bắt, cập nhật thông tin, tính năng của sản phẩm mới: form sản phẩm, chất liệu, màu sắc, kiểu dáng...</li>
                </ul>

                <b>2.THỜI GIAN LÀM VIỆC</b>
                <ul class="tuyendung-noidung">
                    <li><span>Từ 18h – 21h30 các ngày trong tuần</span></li>
                    <li>Nghỉ 3 ngày/ tháng</li>
                </ul>

                <b>3.ĐỊA ĐIỂM LÀM VIỆC</b>
                <ul class="tuyendung-noidung">
                    <span>280 An Dương Vương, phường 3, Quận 5, TPHCM</span>
                </ul>

                <b>4.YÊU CẦU</b>
                <ul class="tuyendung-noidung">
                    <li>Nam/Nữ, tuổi từ 18 - 25.</li>
                    <li>Ngoại hình khá, thân thiện, niềm nở.</li>
                    <li>Có kỹ năng giao tiếp, thuyết phục, đàm phán tốt với khách hàng.</li>
                    <li>Kiên trì, năng động, trung thực, nhiệt tình.</li>
                    <li>Yêu thích công nghệ, giao tiếp, chăm sóc khách hàng. Ưu tiên các ứng viên đã làm việc tại các shop bán điện thoại, điện máy.</li>
                    <li><span>Số lượng cần tuyển: 02</span></li>
                </ul>

                <b>5.QUYỀN LỢI</b>
                <ul class="tuyendung-noidung">
                    <li>Thu nhập: <span>3.000.000 - 4.000.000 VNĐ/tháng.</span></li>
                    <li>Hoa hồng hưởng theo doanh thu bán hàng của cửa hàng.</li>
                    <li>Thưởng thêm theo tăng trưởng cửa hàng.</li>
                    <li>Phụ cấp, thưởng thêm theo chế độ công ty (Làm thêm, gửi xe, sinh nhật, Lễ tết….)</li>
                    <li>Hưởng đầy đủ các chính sách theo luật lao động.</li>
                    <li>Được đào tạo về chuyên môn & kỹ năng trước khi làm việc.</li>
                    <li>Được tiếp xúc với những sản phẩm công nghệ mới nhất hiện nay.</li>
                </ul>

                <b>6.LIÊN HỆ</b>
                <ul class="tuyendung-noidung">
                    <li>Ứng viên điền thông tin theo link:
                        <a href="https://docs.google.com/forms/d/e/1FAIpQLSdNjF8wP7v7ocBDVRUFGqRCHrV0lNPky33Sn3GXVgSVYe7dMA/viewform" target="_blank">
                            <span>Tuyển dụng</span>
                        </a>
                    </li>
                    <li>Hoặc nộp hồ sơ trực tiếp tại <b>Phòng Hành chính nhân sự - 95B Phố Biển, Trần Hưng Đạo, TPHCM.</b></li>
                    <li>Hoặc gửi CV qua email:<b> lanhoxga@gmail.com</b></li>
                </ul>
            </div>
        </div>


        </section>

        <script>
            addContainTaiKhoan()
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
                    <p class="pull-right">Designed by <span><a target="_blank" href="http://www.themeum.com">HCMUE</a></span></p>
                </div>
            </div>
        </div>
    </footer>
</body>

</html>