<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="btlnoidungsach.aspx.cs" Inherits="web11.btlnoidungsach" %>


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
                <div id="timkiem-id">
                    <br /><br /><br />

                <h2>Thư Viện Sách</h2>

                <div class="tim">
                 <input type="text" id="searchInput" class="timkiem" onkeyup="searchFunction()" placeholder="Search...">
                <button type="button" onclick="searchFunction()" class="btntimkiem"><a href="btlsach2.aspx" style="text-decoration: none;">Tìm kiếm</a></button>
                </div>
                <div>
                    <ul id="searchResults" style="margin-left:360px; margin-top:5px; border: 1px solid black; background-color:white; width: 610px; border-radius:2%;"></ul>
                </div>
            </div>
            <br>
            <hr>
            <div class="dexuat">
            <button class="btnn"><a href="/web/btlNoidungSach.html">Tâm lý- kỹ Năng sống</a></button>
            <button class="btnn">Kiến thức- Kỹ thuật</button>
            <button class="btnn">Khoa học - viễn tưởng</button>
            <button class="btnn">Tiểu thuyết văn học</button>
            <button class="btnn">Kinh dị - trinh thám</button>
            <button class="btnn">Học đường - drama</button>
            <button class="btnn">Tín Ngưỡng - tôn giáo</button>
            <button class="btnn">Truyện tranh - truyện màu</button>
            </div>
            <hr>


            <div  class="col span-1-of-4 about-picture">
                <img src="/img/ark3.jpg" alt="">
                <p class="picture-title">
                    <a href="btlsach2.aspx">Thế giới sinh tồn </a>

                </p>

            </div>
            <div  class="col span-1-of-4 about-picture">
                <img src="/img/friend.jfif" alt="">
                <p class="picture-title">
                    All our friend

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
                <div class="row">
                    <div  class="col span-1-of-4 about-picture">
                        <img src="/img/takhongmuontrungsinh.jpg" alt="">
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
                    <img src="/img/team.jfif" alt="">
                    <p class="picture-title">
                        Team working

                    </p>

                </div>
                <div class="col span-1-of-4 about-picture">
                    <img src="/img/funnnny.jfif" alt="">
                    <p class="picture-title">
                        Funny class

                    </p>

                </div>
         <div class="clearfix"></div>
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
            <div class="row">
                <div  class="col span-1-of-4 about-picture">
                    <img src="/img/takhongmuontrungsinh.jpg" alt="">
                    <p class="picture-title">
                        <a href="/web/btlsach.html" >Trùng sinh về lúc đại học
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
                <img src="/img/team.jfif" alt="">
                <p class="picture-title">
                    Team working

                </p>

            </div>
            <div class="col span-1-of-4 about-picture">
                <img src="/img/funnnny.jfif" alt="">
                <p class="picture-title">
                    Funny class

                </p>

            </div>
 
            
        <div class="clearfix"></div>

        <section class="testimonial-section" id="diendan-id">
            <h2 >Diễn Đàn Trao Đổi</h2>
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
            </div>
        </section>

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