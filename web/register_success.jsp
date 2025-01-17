<%-- 
    Document   : register_success
    Created on : Sep 26, 2019, 9:02:05 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Easycourse - Education </title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">
        
        <div class="alert alert-success" role="alert" style="height: 50px; font-size: 16px">
            <center> Registration is Successful. <a href='index.html' class="alert-success">Go to Login</a>. </center>
        </div>

        <!-- PRE LOADER -->
        <section class="preloader">
            <div class="spinner">
                <span class="spinner-rotate"></span>  
            </div>
        </section>

        <!-- MENU -->
        <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                    </button>
                    <a href="index.html" class="navbar-brand">Easycourse</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="#top" class="smoothScroll">หน้าหลัก</a></li>
                        <li><a href="#about" class="smoothScroll">เกี่ยวกับเรา</a></li>
                        <li><a href="#courses" class="smoothScroll">คอร์สเรียน</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-sign-in"></i>เข้าสู่ระบบ</a></li>   
                        <li><a href="#about"><i class="fa fa-user-circle-o"></i>สมัครสมาชิก</a></li>
                    </ul>
                </div>
            </div>
        </section>

        <!-- Modal Login -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">

                <div class="modal-content">
                    <div class="modal-header" >
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body" style="background-color: #252020; text-align: center">
                        <div class="footer-info newsletter-form">
                            <div class="section-title"> <br><br>
                                <h2>ลงชื่อเข้าใช้บัญชีของคุณ</h2>
                                <div style="color: white"><h5>เข้าสู่ระบบเพื่อเข้าชมบทเรียนและลงทะเบียนเรียนคอร์สของเรา</h5></div>>
                            </div>
                            <div style="text-align: center">
                                <div class="form-group">
                                    <form action="login.jsp" method="post">
                                        <input type="email" name="email" class="form-control" placeholder="Email Address" required="">
                                        <input type="password" name="password" class="form-control" placeholder="Password" required="">    
                                        <br><center>    
                                            <input type="submit" class="form-control" name="submit" id="form-submit" value="เข้าสู่ระบบ">
                                        </center>   
                                    </form>
                                </div>
                            </div><br><br>
                        </div>
                    </div>

                    <div class="modal-footer" style="text-align: center">
                        <a href="">ลืมรหัสผ่าน?</a> &nbsp;&nbsp;&nbsp; 
                        <a href="index.html" class="smoothScroll"><button type="button" class="btn btn-default">สร้างบัญชีใหม่</button></a>
                    </div>
                </div>

            </div>
        </div>

        <!-- HOME -->
        <section id="home">
            <div class="row">
                <div class="owl-carousel owl-theme home-slider">
                    <div class="item item-second">
                        <div class="caption">
                            <div class="container">
                                <div class="col-md-6 col-sm-12">
                                    <h1>เริ่มต้นการเรียนรู้ด้วยหลักสูตรของเรา</h1>
                                    <h3>หลักสูตรออนไลน์ของเราสร้างขึ้นโดยความร่วมมือกับผู้นำด้านเทคโนโลยีและถูกออกแบบมาเพื่อตอบสนองความต้องการของคนยุคใหม่</h3>
                                    <a href="" data-toggle="modal" data-target="#exampleModalCenter" class="section-btn btn btn-default smoothScroll">ลงทะเบียนเรียน</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- ABOUT & REGISTER -->
        <section id="about">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class="about-info">
                            <h2>เริ่มต้นประสบการณ์คอร์สเรียนออนไลน์</h2>
                            <figure>
                                <span><i class="fa fa-users"></i></span>
                                <figcaption>
                                    <h3>หลักสูตรโดยผู้เชี่ยวชาญ</h3>
                                    <p>ครบถ้วนทุกพื้นฐานการพัฒนาแอพลิเคชันไปจนถึงระดับมืออาชีพ</p>
                                </figcaption>
                            </figure><br>
                            <figure>
                                <span><i class="fa fa-certificate"></i></span>                              
                                <figcaption>
                                    <h3>การเรียนรู้ที่ยืดหยุ่น</h3>
                                    <p>เรียนรู้แบบกำหนดด้วยตนเอง เข้าถึงเนื้อหาที่ใดหรือเมื่อไรก็ได้</p>
                                </figcaption>                          
                            </figure><br>
                            <figure>
                                <span><i class="fa fa-bar-chart-o"></i></span>                               
                                <figcaption>
                                    <h3>เริ่มต้นเรียนคอร์สฟรี</h3>
                                    <p>เปิดกว้างสำหรับทุกคนให้ได้เข้าเรียนฟรีหลากหลายหลักสูตร ไม่มีค่าใช้จ่ายให้ต้องกังวล</p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>

                    <div class="col-md-offset-1 col-md-4 col-sm-12">
                        <div class="entry-form">
                            <form action="register.jsp" method="post">
                                <h2>สมัครสมาชิกตอนนี้</h2>
                                <input type="text" name="fullname" class="form-control" placeholder="Full name" required="">
                                <input type="email" name="email" class="form-control" placeholder="Your email address" required="">
                                <input type="password" name="password" class="form-control" placeholder="Your password" required="">
                                <button class="submit-btn form-control" id="form-submit">ลงทะเบียน</button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- Courses -->
        <section id="courses">
            <div class="container">
                <div class="row">

                    <div class="col-md-12 col-sm-12">
                        <div class="section-title">
                            <h2>หลักสูตรทั้งหมดของเรา <small>คอร์สเรียนพัฒนาทักษะของคุณด้วยคอร์สที่ทันสมัย</small></h2>
                        </div>

                        <div class="owl-carousel owl-theme owl-courses">
                            <div class="col-md-4 col-sm-4">
                                <div class="item">
                                    <div class="courses-thumb">
                                        <div class="courses-top">
                                            <div class="courses-image">
                                                <img src="images/courses-image1.jpg" class="img-responsive" alt="">
                                            </div>
                                            <div class="courses-date">
                                                <span><i class="fa fa-calendar"></i> 12 / 7 / 2019</span>
                                                <span><i class="fa fa-clock-o"></i> 4 Hours</span>
                                            </div>
                                        </div>

                                        <div class="courses-detail">
                                            <h3><a href="#">Front-End Web Developer</a></h3>
                                            <p>เรียนรู้ทักษะในการพัฒนาเว็บไซต์พื้นฐานด้วย HTML CSS, Flexbox และ CSS Grid พัฒนาเว็บไซต์เชิงโต้ตอบและแอปพลิเคชัน UI (ส่วนต่อประสานผู้ใช้) โดยใช้ JavaScript และ HTML และเชื่อมต่อเว็บแอปพลิเคชันเพื่อสำรองข้อมูลเซิร์ฟเวอร์โดยใช้ JavaScript</p>
                                        </div>

                                        <div class="courses-info">
                                            <div class="courses-author">
                                                <img src="images/author-image1.jpg" class="img-responsive" alt="">
                                                <span>Mark Wilson</span>
                                            </div>
                                            <div class="courses-price">
                                                <a href="#"><span>ลงทะเบียนฟรี</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-4">
                                <div class="item">
                                    <div class="courses-thumb">
                                        <div class="courses-top">
                                            <div class="courses-image">
                                                <img src="images/courses-image2.jpg" class="img-responsive" alt="">
                                            </div>
                                            <div class="courses-date">
                                                <span><i class="fa fa-calendar"></i> 20 / 7 / 2019</span>
                                                <span><i class="fa fa-clock-o"></i> 8 Hours</span>
                                            </div>
                                        </div>

                                        <div class="courses-detail">
                                            <h3><a href="#">Full Stack Web Developer</a></h3>
                                            <p>คุณจะได้เรียนรู้ทักษะในการสร้าง APIs ที่มีฐานข้อมูลสำรองและเว็บแอปพลิเคชัน ผู้เรียนจะสามารถออกแบบและสร้างฐานข้อมูลสำหรับแอปพลิเคชันซอฟต์แวร์และปรับใช้เว็บ API ที่มีฐานข้อมูลสำรองและรักษาความปลอดภัยและจัดการการตรวจสอบผู้ใช้และการควบคุมการเข้าถึงสำหรับฝั่งเซิร์ฟเวอร์ </p>
                                        </div>

                                        <div class="courses-info">
                                            <div class="courses-author">
                                                <img src="images/author-image2.jpg" class="img-responsive" alt="">
                                                <span>Jessica</span>
                                            </div>
                                            <div class="courses-price">
                                                <a href="#"><span>ลงทะเบียนฟรี</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-4">
                                <div class="item">
                                    <div class="courses-thumb">
                                        <div class="courses-top">
                                            <div class="courses-image">
                                                <img src="images/courses-image3.jpg" class="img-responsive" alt="">
                                            </div>
                                            <div class="courses-date">
                                                <span><i class="fa fa-calendar"></i> 15 / 8 / 2019</span>
                                                <span><i class="fa fa-clock-o"></i> 8 Hours</span>
                                            </div>
                                        </div>

                                        <div class="courses-detail">
                                            <h3><a href="#">Android Developer</a></h3>
                                            <p>เราสร้างโปรแกรมเหล่านี้โเพื่อสนับสนุนนักพัฒนา Android โดยเฉพาะสำหรับผู้ที่ต้องการความสำเร็จด้วยการสร้างผลงานที่หลากหลายและสร้างแอพของคุณเองใน Google Play Store หากเป้าหมายของคุณคือการจ้างงานในฐานะนักพัฒนา Android โปรแกรมนี้เป็นสิ่งที่คุณต้องประสบความสำเร็จ</p>
                                        </div>

                                        <div class="courses-info">
                                            <div class="courses-author">
                                                <img src="images/author-image3.jpg" class="img-responsive" alt="">
                                                <span>Catherine</span>
                                            </div>
                                            <div class="courses-price">
                                                <a href="#"><span>ลงทะเบียนฟรี</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-4">
                                <div class="item">
                                    <div class="courses-thumb">
                                        <div class="courses-top">
                                            <div class="courses-image">
                                                <img src="images/courses-image4.jpg" class="img-responsive" alt="">
                                            </div>
                                            <div class="courses-date">
                                                <span><i class="fa fa-calendar"></i> 10 / 8 / 2019</span>
                                                <span><i class="fa fa-clock-o"></i> 8 Hours</span>
                                            </div>
                                        </div>

                                        <div class="courses-detail">
                                            <h3><a href="#">iOS Developer</a></h3>
                                            <p>ในเส้นทางนี้คุณจะได้เรียนรู้เกี่ยวกับการการพัฒนาโปรแกรมใน Swift จากนั้นสร้างแอป iOS แรกของคุณตั้งแต่เริ่มต้น คุณจะสร้างพอร์ตโฟลิโอที่คุณสามารถนำเสนอในการสัมภาษณ์ และเรียนรู้พื้นฐานการพัฒนาด้านมือถือเช่นรูปแบบการออกแบบและจัเทคนิคทั่วไปเพื่อให้ได้งานในฐานะนักพัฒนา iOS</p>
                                        </div>

                                        <div class="courses-info">
                                            <div class="courses-author">
                                                <img src="images/author-image1.jpg" class="img-responsive" alt="">
                                                <span>Mark Wilson</span>
                                            </div>
                                            <div class="courses-price">
                                                <a href="#"><span>ลงทะเบียนฟรี</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-4">
                                <div class="item">
                                    <div class="courses-thumb">
                                        <div class="courses-top">
                                            <div class="courses-image">
                                                <img src="images/courses-image5.jpg" class="img-responsive" alt="">
                                            </div>
                                            <div class="courses-date">
                                                <span><i class="fa fa-calendar"></i> 5 / 10 / 2018</span>
                                                <span><i class="fa fa-clock-o"></i> 5 Hours</span>
                                            </div>
                                        </div>

                                        <div class="courses-detail">
                                            <h3><a href="#">Back-End Web Developer</a></h3>
                                            <p>เรียนรู้การพัฒนาแบ็คเอนด์ด้วยภาษา Java ซึ่งเป็นหนึ่งในภาษาที่ได้รับความนิยมมากที่สุดในโลกและองค์กรขนาดใหญ่ คุณจะได้เรียนรู้การสร้างเว็บแอปพลิเคชันฝั่งเซิร์ฟเวอร์ซึ่งที่มีประสิทธิภาพเพื่อจัดเก็บข้อมูลอย่างต่อเนื่อง และสร้างแอปพลิเคชันที่สามารถรองรับและปรับขนาดเพื่อรองรับผู้ใช้</p>
                                        </div>

                                        <div class="courses-info">
                                            <div class="courses-author">
                                                <img src="images/author-image2.jpg" class="img-responsive" alt="">
                                                <span>Jessica</span>
                                            </div>
                                            <div class="courses-price">
                                                <a href="#"><span>ลงทะเบียนฟรี</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
        </section>     

        <!-- SCRIPTS -->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/smoothscroll.js"></script>
        <script src="js/custom.js"></script>

    </body>

    <!-- FOOTER -->
    <footer id="footer">

    </footer>
    
</html>