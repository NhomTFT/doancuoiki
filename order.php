<?php 
	session_start();
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="conatiner">

<div class="panel panel-primary">
            <div class="panel-heading" style="font-size:30px;">
                <center>
                    <p>THÀNH CÔNG!!!</p>
                </center>
            </div>
			<div class="panel-body">
                <table class="table table-hover table-bordered">
                   
			
				<?php


require "models/orders.php";
require "models/orderdetail.php";
$order = new Order();
$orderdetail = new Orderdetail();
if(!empty($_SESSION['cart']))
{	
	//xu li du lieu form
	$code = rand(100,100000);
	//xu li ngay thang
	$format = "%Y-%m-%d %H:%M:%S";
	$timestamp = time();
	$created_at = strftime($format, $timestamp );
	//
	$name = $_POST['name'];
	$email = $_POST['email'];
	$phonenumber = $_POST['phonenumber'];
	$address = $_POST['address'];
	$message = $_POST['message'];
	$order->insertOrder($code,$created_at,$name,$email,$phonenumber,$address,$message);
	//xu li gio hang 
	$orderarr = $order->getNewestOrder();
	//lay ra order_id cua tale order
	$order_id = $orderarr['order_id'];
	//$orderdetail->insertOrderdetail()
	foreach ($_SESSION['cart'] as $value) {
		$total = 0;
		$total = $value['price'] * $value['qty'];
		$orderdetail->insertOrderdetail($order_id,$value['pro_image'],$value['name'],$value['price'],$value['qty'],$total);
	}
	echo "<h3>Giỏ Hàng Của Bạn Đang Chờ Xác Nhận</h3> <br> <h2><a href='javascript: history.go(-1)'>Quay Lại</a></h2>";
}
else {
	echo "<h3>Giỏ Hàng Của Bạn Đang Rỗng</h3> <br> <h2><a href='javascript: history.go(-1)'>Quay Lại</a></h2>";
	die();
}
?>
</div>




</table>
</div>
</div>
</div>


	
</body>
</html>