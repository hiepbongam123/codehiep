<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="btlbansach.aspx.cs" Inherits="web11.btlbansach" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Thư Viện Sách</title>

        <link href="css/styles.css" rel="stylesheet">
        <link href="css/grid.css" rel="stylesheet">
        <link href="css/query.css" rel="stylesheet">

        <script src="js/timkiem.js"></script>

    </head>

    <body>
        <header>
            <div class="nav sticky">
                <a href="#"><img style="    border-radius: 10%" class="logo" src="/img/logo.png" alt="logo"></a>
            <ul class="main-nav">
                 <li><a href="XuLy.aspx">Lịch Sử Mua</a></li>
                 <li><a href="#timkiem-id">Tìm Kiếm</a></li>
                <li><a href="#diendan-id">Diễn Đàn</a></li>
                <li><a href="#thuvien-id">Thư Viện</a></li>
                <li><a href="#muasach-id">Mua Sách</a></li>
                <li><a href="btldangnhap.aspx">Đăng Xuất</a></li>
            </ul>
            
            </div>
            <div class="clearfix"></div>
            <div class="row">
                <div class="heading-main-box">
                    <h1 > 
                        CHÚNG TA SẼ ĐỌC CÙNG NHAU.<br> Vào đọc ngay!
                    </h1>
                    <a href="#thuvien-id" class="btn">thư viện</a>
                    <a href="btlnoidungsach.aspx" class="btn">Sách hay</a>
                </div>
                
            </div>
        </header>
        <hr>

        <section class="about-section" id="thuvien-id">
            <div class="row">
                <div id="timkiem-id">
                    <br /><br /><br /><br /><br />

                <h2>Thư Viện Sách</h2>

                 <div class="tim">
                 <input type="text" id="searchInput" class="timkiem" onkeyup="searchFunction()" placeholder="Search...">
                <button type="button" onclick="searchFunction()" class="btntimkiem"><a href="btlsach2.aspx" style="text-decoration: none;">Tìm kiếm</a></button>
                </div>
                <div >
                    <ul id="searchResults" style="margin-left:360px; margin-top:5px; border: 1px solid black; background-color:white; width: 610px;"></ul>
                </div>




            </div>
            <br>
            <hr>
            <div class="dexuat">
            <button class="btnn"><a href="btlnoidungsach.aspx">Tâm lý- kỹ Năng sống</a></button>
            <button class="btnn"><a href="#">Kiến thức- Kỹ thuật</a></button>
            <button class="btnn"><a href="#">Khoa học - viễn tưởng</a></button>
            <button class="btnn"><a href="#">Tiểu thuyết văn học</a></button>
            <button class="btnn"><a href="#">Kinh dị - trinh thám</a></button>
            <button class="btnn"><a href="#">Học đường - drama</a></button>
            <button class="btnn"><a href="#">Tín Ngưỡng - tôn giáo</a></button>
            <button class="btnn"><a href="#">Truyện tranh - truyện màu</a></button>
            </div>
            <hr>


            <div class="row">
                <div  class="col span-1-of-4 about-picture">
                    <img src="/img/takhongmuontrungsinh.jpg" alt="ta muon trung sinh">
                    <p class="picture-title">
                        <a href="btlsach.aspx" >Trùng sinh về lúc đại học
                        </a>
                    </p>

                </div>
                <div class="col span-1-of-4 about-picture">
                    <img src="/img/oshinoko4.jpg" alt="">
                    <p class="picture-title">
                        Chuyển sinh thành con của Idol

                    </p>

                </div>
                <div  class="col span-1-of-4 about-picture">
                    <img src="/img/drstone2.jpg" alt="">
                    <p class="picture-title">
                        Tái sinh thế giới bị hóa đá 

                    </p>

                </div>
                <div  class="col span-1-of-4 about-picture">
                    <img src="/img/tamuonchothanhchuatbongtoi4.jpg" alt="">
                    <p class="picture-title">
                        Ta muốn trở thành chúa tể bóng tối

                    </p>

                </div>
                <div class="clearfix"></div>

                <div  class="col span-1-of-4 about-picture">
                    <img src="/img/ark3.jpg" alt="">
                    <p class="picture-title">
                        <a href="btlsach2.aspx">Thế giới sinh tồn </a>
    
                    </p>
    
                </div>
                <div class="col span-1-of-4 about-picture">
                    <img src="/img/funnnny.jfif" alt="">
                    <p class="picture-title">
                        Funny class

                    </p>

                </div>
                <div  class="col span-1-of-4 about-picture">
                    <img src="/img/confident.jfif" alt="">
                    <p class="picture-title">
                        Be confident 

                    </p>

                </div>
                <div  class="col span-1-of-4 about-picture">
                    <img src="/img/friend.jfif" alt="">
                    <p class="picture-title">
                        All our friend

                    </p>

                </div>
            

        </section>
        <div class="clearfix"></div>
        <section class="product-section" id="muasach-id">
                    <div class="ooo">
            <br /><br /><br /><br />
        </div>
            <h2>bán sách</h2>
            <p class="p-long">
                Các bạn có thể ủng hộ chúng tôi bằng cách mua các quyển sách chúng tôi đề cử.
                <br>Đây là các đề tài chúng tôi đề cử
            </p>
            <div class="row">
                <div class="col span-1-of-3 about-product">
                    <div class="product-box">
                        <h3>Sách Về Khoa Học</h3>
                        <p class="product-price">19$ <span>/tháng</span></p>
                        <ul>
                            <li class="small-icon">Hiểu biết về sự phát triển công nghệ hiện tại</li>
                            <li class="small-icon">Tạo thêm ý tưởng phát triển công nghệ mới</li>
                        </ul>
                        <a href="myForm.html" class="btn">Mua</a>
                    </div>


                </div>
                <div class="col span-1-of-3 about-product">
                    <div class="product-box">
                        <h3 >Sách về Luật học</h3>
                        <p class="product-price">29$ <span>/tháng</span></p>
                        <ul>
                            <li class="small-icon">Làm việc hoặc Kinh doanh có thể không biết nhưng luật thì bắt buộc phải biết</li>
                            <li class="small-icon">Nâng cao tầm nhìn chính trị</li>
                        </ul>
                        <a href="myForm.html" class="btn">Mua</a>
                    </div>

                </div>
                <div class="col span-1-of-3 about-product">
                    <div class="product-box">
                        <h3 >sách về tư duy đời sống</h3>
                        <p class="product-price">59$ <span>/tháng</span></p>
                        <ul>
                            <li class="small-icon">Thêm góc nhìn đa chiều về cuộc sống, hiểu được bản thân</li>
                            <li class="small-icon">Tăng kỹ năng mềm, khả năng xử lý và phán đoán</li>
                        </ul>
                        <a href="myForm.html" class="btn">Mua</a>
                    </div>

                </div>
    
            </div>

        </section>
        <div class="clearfix"></div>
        <div class="ooo">
            <br /><br /><br /><br />
        </div>

        <section class="testimonial-section" id="diendan-id">
                    <div class="ooo">
            <br /><br /><br /><br />
        </div>
            <h2>Diễn Đàn Trao Đổi</h2>
            <div class="row">
                <div class="col span-1-of-3 about-tes">
                    <blockquote>

                        <cite>
                           <img src="/img/avtkhabanh2.jpg" alt=""> 
                        </cite>
                        <div class="box">
                        <b>Khá Bảnh Ngắm Cá Cảnh</b><br>
                        The coure is very helpful, finally i can speak boclich 
                        </div>

                        <div class="tt">
                            <p>1 giờ</p>
                            <button class="btnlike">
                                <p>Like</p>
                            </button>
                            <button class="btncomment">
                                <p>comment</p>
                            </button>
                        </div>

                    </blockquote>
                </div>
                <div class="col span-1-of-3 about-tes">
                    <blockquote>
                        <cite>
                           <img src="/img/avthoanrose2.jpg" alt="">  
                        </cite>
                        <div class="box">
                            <b>Huấn Hoa Hồng </b> <br>
                            great!! I can speak uncut undergound  </div>

                            <div class="tt">
                                <p>4 ngày</p>
                                <button class="btnlike">
                                    <p>Like</p>
                                </button>
                                <button class="btncomment">
                                    <p>comment</p>
                                </button>
                            </div>
                        
                    </blockquote>
                </div>
                <div class="col span-1-of-3 about-tes">
                    <blockquote>

                        <cite>
                           <img src="/img/tienbip2.jpg" alt=""> 
                        </cite>
                        <div class="box">                       
                             <b> Tiến Bịp </b> <br>
                            Thank web, thank cai nit  </div>


                            <div class="tt">
                                <p>2 ngày</p>
                                <button class="btnlike">
                                    <p>Like</p>
                                </button>
                                <button class="btncomment">
                                    <p>comment</p>
                                </button>
                            </div>

                    </blockquote>
                </div>
                <br><br><br><br>
                <p style="margin-left: 30px;">Bình Luận</p>
                <input type="text" placeholder="..." class="cmt" style="width: 600px;height: 50px;margin-left: 30px;">
                <button class="btnbinhluan" style="width: 70px;height: 50px;">Gửi</button>
            </div>
        </section>

        <section class="contact-section" id="Contract-id">
                    <ul class="information">
                        <li><i class="fas"></i>Adress: 21Q, Giai Phong, Hoang Mai, Ha Noi </li>
                        <li><i class="fas"></i>Email: bookmuch@gmail.com </li>
                        <li><i class="fas"> </i>SDT: (+084) 020-323-323-211 </li>

                    </ul>
                   
 
        </section>
        <div class="clearfix"></div>
        <footer>
            <p>
                Coppyright &copy 2023 by NongHiep
            </p>
        </footer>
        
    </body>
</html>
