<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Mobile Shopping</title>
    <link rel="icon" href="./images/logo.png" type="image/icon type">
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
//tim key
if (isset($_GET['key'])) {
    $key = $_GET['key'];
}
$perpage = 3; // hiển thị 3 sản phẩm trên 1 trang
$pages = $product->getTotalOfProductByFacName($key);
$total = $pages['total'];
if (isset($_GET['current_page'])) {
    $current_page = $_GET['current_page'];
} else {
    $current_page = 1;
} // Lấy số trang trên thanh địa chỉ
$offset = 2;
$url = $_SERVER['PHP_SELF'];
//
$page = new Page($url, $current_page, $perpage, $total, $offset);
?>

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

                                    <li><a href="cate.php?type_id=1">SmartPhone</a></li>
                                    <li><a href="cate.php?type_id=2">LapTop</a></li>
                                    <li><a href="cate.php?type_id=4">SmartWatch</a></li>
                                    <li><a href="cate.php?type_id=3">Phone</a></li>
                                    <li><a href="cate.php?type_id=5">Sạc</a></li>
                                    <li><a href="cate.php?type_id=6">tablet</a></li>
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
    <div class="container-fluid">
        <img src="img/banners/blackFriday.gif" alt="" style="width: 100%; height:150px;">
    </div>
    <div class="search_box pull-right">
        <form action="result.php" method="get">
            <input type="text" placeholder="Search" name="key" />
        </form>
    </div>
    <!--/header-bottom-->
    </header>
    <!--/header-->
    <section>
        <div class="container">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <div class="panel-group category-products" id="accordian">
                        <h2>Nhãn Hàng</h2>
                        <?php
                        $manuarr = $manufacture->getAllFactureName();
                        foreach ($manuarr as $namefac) {
                            if (isset($_GET['type_id'])) {
                                $type_id = $_GET['type_id'];
                        ?>
                                <!--category-productsr-->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="cate.php?manu_id=<?php echo $namefac['manu_id'] ?>&type_id=<?php echo $type_id ?>"><?php echo $namefac['manu_name'] ?></a></h4>
                                    </div>
                                </div>
                            <?php } else {
                            ?>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="cate.php?manu_id=<?php echo $namefac['manu_id'] ?>"><?php echo $namefac['manu_name'] ?></a></h4>
                                    </div>
                                </div>
                        <?php }
                        } ?>
                    </div>
                </div>
            </div>
            <div class="col-sm-9">
                <div class="features_items">
                    <!--features_items-->
                    <h2 class="title text-center">Search Result</h2>
                    <?php
                    $prod = $product->findProductByFactureName($current_page, $perpage, $key);
                    foreach ($prod as $key) {
                    ?>
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center"> <img src="admin/images/<?php echo $key['pro_image'] ?>" alt="" />
                                        <h2><?php echo number_format($key['price'], 0) . " đ" ?></h2>
                                        <p><?php echo $key['name'] ?></p>
                                        <a href="insertcard.php?id=<?php echo $key['id'] ?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                    </div>
                                    <div class="product-overlay">
                                        <div class="overlay-content">
                                            <h2><?php echo number_format($key['price'], 0) . " đ" ?></h2>
                                            <p><a href="detail.php?id=<?php echo $key['id'] ?>"><?php echo $key['name'] ?></a></p>
                                            <a href="insertcard.php?id=<?php echo $key['id'] ?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                    <div class="col-sm-12">
                        <div class="paginate">
                            <?php
                            echo $page->paginateresult($url, $total, $current_page, $perpage, $offset);
                            ?>
                        </div>
                    </div>
                    <footer id="footer">
    </section>
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