<?php
$conn = mysqli_connect('localhost', 'root', '', 'qlbanhang');
if (isset($_POST['signup'])) {


    $hoten = $_POST['hoten'];
    $sdt = $_POST['sdt'];
    $email = $_POST['email'];
    $username = $_POST['name'];
    $password = md5($_POST['password']);



    $sql = "INSERT INTO users(ho_ten,sdt,email,user_name,password) VALUES( '$hoten','$sdt','$email', '$username','$password')";
    mysqli_query($conn, $sql);
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/style1.css">
</head>

<body>
    <div class="hero">
        <div class="form-box">
            <div class="form-login">
            <?php
echo "đăng kí thành công!";
                ?>
                <h4>SIGN UP</h4>
            </div>
            <form id="login" class="form-input" action="signup.php" method="POST">
                <input type="text" name="hoten" class="input-field" placeholder="Họ và tên" required>
                <input type="text" name="sdt" class="input-field" placeholder="Số điện thoại" required>
                <input type="email" name="email" class="input-field" placeholder="Email" required>
                <input type="text" name="name" class="input-field" placeholder="Username" required>
                <input type="password" name="password" class="input-field" placeholder="Enter password" required>
               
                <button type="submit" name="signup" class="submit-btn" style="float:left">ĐĂNG KÍ</button>
                <button type="submit" name="signup" class="submit-btn" style="float:right"><a href="login.php">Sign In</a></button>


            </form>
        </div>
    </div>
</body>

</html>