﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XuLy.aspx.cs" Inherits="web11.XuLy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
        <div class="nav sticky" style="margin-left: 0px; margin-top: 0px;">
        <a href="#"><img style="    border-radius: 10%" class="logo" src="/img/logo.png" alt="logo"></a>
        <ul class="main-nav">
            <li><a href="myForm.html">Quay Lại Giỏ Hàng</a></li>
            <li><a href="btlbansach.aspx">Trang Chủ</a></li>
            <li><a href="btldangnhap.aspx">Đăng Xuất</a></li>
        </ul>

    </div>
    <div class="clearfix"></div>
    <br /><br /><br /><br />
    <link rel="stylesheet" href="css/styles.css" />

    <style>
        table, th, tr, td{
            border: 1px solid #333;
            border-collapse: collapse;
        }
        #wrapper{
            display:flex;
            justify-content:center;
            text-align:center;
            height:100vh;
            position:relative;
        }
    </style>
    <div id="wrapper">
        <form id="form1" runat="server">
            <h2>Danh sách mua</h2>
            <br /><br />
            
        <table >
            <thead>
                <tr>
                    <th>STT</th>
                    <th >Tên Sách</th>
                    <th>Ngày mua</th>
                    
                </tr>
            </thead>
            <tbody id="viewList" runat="server">
            </tbody>
        </table>
    </form>
    </div>
</body>
</html>