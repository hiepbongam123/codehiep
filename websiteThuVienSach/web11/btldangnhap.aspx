<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="btldangnhap.aspx.cs" Inherits="web11.btldangnhap" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login & Register</title>
    <link href="css/dangnhap.css" rel="stylesheet" />
    <style>
    </style>
</head>
<body>
    <div class="container">
        <div class="form">
            <form id="formlogin" class="form">
                <h2 style="font-size:50px;text-align:center;">Login</h2>
                   <div class="tooltip" >
                    <span class="tooltiptext">điền tên đăng nhập</span>

                 </div>
                <input type="text" id="login-username" placeholder="Điền tên đăng nhập" style="width:400px;height:30px; margin-bottom:30px"> 
                
                    <div class="tooltip" >
                    <span class="tooltiptext">điền mật khẩu</span>

                    </div>
                <input type="password" id="login-password" placeholder="điền mật khẩu" style="width:400px;height:30px; margin-bottom:30px">

                <button type="submit" ><a href="btlbansach.aspx" style="text-decoration: none;">Đăng Nhập</a></button>
                <button type="submit"><a href="btldangky.aspx" style="text-decoration: none;">Đăng Ký</a></button>
                <button type="reset" >reset</button>
            </form>
        </div>
    </div>

    <script src="js/btldangnhap.js"></script>
</body>
</html>
