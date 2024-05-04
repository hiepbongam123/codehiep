<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="btlsach.aspx.cs" Inherits="web11.btlsach" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Thư Viện Sách</title>

        <link href="css/query.css" rel="stylesheet">
        <link rel="stylesheet" href="css/btlsach.css">

        <script src="scrip.js"></script>

    </head>

    <body>
        <br><br>
            <div class="nav sticky">
                <a href="btlbansach.aspx"><img style="    border-radius: 10%" class="logo" src="/img/logo.png" alt="logo"></a>
            <ul class="main-nav">
                <li><a href="btlbansach.aspx">Trang Chủ</a></li>
                <li><a href="btlbansach.aspx"><a href="#diendan-id">Diễn Đàn</a></a></li>
                <li><a href="#thuvien-id">Thư Viện</a></li>
                <li><a href="btldangnhap.aspx">Đăng Xuất</a></li>
            </ul>
            
            </div>
            <div class="clearfix"></div>
        <hr>

        <section class="about-section" id="thuvien-id">
            <div class="row">
                <h2>Thư Viện Sách</h2>
                 <div class="tim">
                 <input type="text" id="searchInput" class="timkiem" onkeyup="searchFunction()" placeholder="Search...">
                <button type="button" onclick="searchFunction()" class="btntimkiem"><a href="btlsach2.aspx">Tìm kiếm</a></button>
                </div>
                <div class="cach">
                    <ul id="searchResults" style="margin-left:360px; margin-top:5px; border: 1px solid black; background-color:white; width: 610px;"></ul>
                </div>

            </div>
            <br>
            <hr>
            <div class="dexuat">
            <button class="btnn"><a href="btlnoidungsach.aspx">Tâm lý- kỹ Năng sống</a></button>
            <button class="btnn">Kiến thức- Kỹ thuật</button>
            <button class="btnn">Khoa học - viễn tưởng</button>
            <button class="btnn">Tiểu thuyết văn học</button>
            <button class="btnn">Kinh dị - trinh thám</button>
            <button class="btnn">Học đường - drama</button>
            <button class="btnn">Tín Ngưỡng - tôn giáo</button>
            <button class="btnn">Truyện tranh - truyện màu</button>
            </div>
            <hr>
    <div class="truyen">
            <div class="anh">
                <img src="/img/takhongmuontrungsinh2.jpg" alt="">
            </div>

        <div class="gioithieu">
            <h3 style="    text-transform: uppercase;">Ta không muốn trùng sinh đâu</h3><br><br>
                <div class="thongtin">

                    <b>
                        <ul>
                            <li>Tác giả</li>
                            <li>Tình trạng</li>
                            <li>Lượt thích</li>
                            <li>Lượt theo dõi</li>
                            <li>Lượt xem</li>
                        </ul>
                    </b>

                </div>
                <div class="chitiet">
                    <li>Trần Há Thăng</li>
                    <li>Đang sản xuất</li>
                    <li>23,234</li>
                    <li>192,323</li>
                    <li>4,232,644</li>
                </div>

            </div>
            <div class="view">
                <button style="background-color: greenyellow; "><a href="https://nettruyenco.vn/truyen-tranh/ta-khong-muon-trung-sinh-dau/chuong-1/670517">Đọc từ đầu</a></button>
                <button style="background-color: rgb(226, 44, 44);"><a href="#">Theo dõi</a></button>
                <button style="background-color: rgb(160, 82, 234);"><a href="#">Thích</a></button>
                <button style="background-color: rgb(39, 255, 255);"><a href="https://nettruyenco.vn/truyen-tranh/ta-khong-muon-trung-sinh-dau/chuong-1/670517">Đọc Tiếp</a></button>
            </div>
    </div>

    </div>


    <hr>

    


        </section>


        <div class="clearfix"></div>



        <section class="contact-section" id="Contract-id">
            <div class="row">
                <div class="col span-1-of-3">
                    <ul class="information">
                        <li><i class="fas"></i>Adress: 21Q, Giai Phong, Hoang Mai, Ha Noi </li>
                        <li><i class="fas"></i>Email: bookmuch@gmail.com </li>
                        <li><i class="fas"> </i>SDT: (+084) 020-323-323-211 </li>

                    </ul>
                    <ul class="social-icon">
                        <li><i class="fab-fb"></i> Facebook</li>
                        <li><i class="fab-twitter"></i> Twitter</li>
                        <li><i class="fab-intagram"></i> Intagram</li>
                        <li><i class="fab-google"></i> Google</li>


                    </ul>
                </div>
        <div class="row">
            <div class="col span-2-of-3">
                <form action="">
                    <div class="row">
                        <div class="col span-1-of-3">
                            <label for="">Name</label>

                        </div>
                        <div class="col span-2-of-3">
                            <input type="text" placeholder="Your name">
                        </div>

                        <div class="col span-1-of-3">
                            <label for="">Email</label>

                        </div>
                        <div class="col span-2-of-3">
                            <input type="text" placeholder="Your Email">
                        </div>

                        <div class="col span-1-of-3">
                            <label for="">Message</label>

                        </div>
                        <div class="col span-2-of-3">
                            <textarea type="text" placeholder="Your message"></textarea>
                        </div>
                        <div class="row">
                            <input type="submit" class="btn" value="Send">
                        </div>
                    </div>
                </form>
            </div>

        </div>
        </div>

        </section>
        <div class="clearfix"></div>
        <footer>
            <p>
                Coppyright &copy 2023 by NongHiep
            </p>
        </footer>
        
    </body>
</html>
