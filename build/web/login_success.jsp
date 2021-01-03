<%-- 
    Document   : login_success
    Created on : Sep 25, 2019, 3:08:23 PM
    Author     : lenovo
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>


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


        <script src="https://www.paypal.com/sdk/js?client-id=AUbzAYU5XhzFbw1PDexh35BlTzSY-VJopGT8zuKNhXm3JAXTBp_ZOFtQBWgHXWwaPPL-Ox3hl6GZrzfF"> </script>
        <script src="https://www.paypalobjects.com/api/checkout.js"></script>

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
                    <a href="login_success.jsp" class="navbar-brand">Easycourse</a>
                </div>

                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="login_success.jsp" class="smoothScroll">คอร์สทั้งหมด</a></li>
                    <li><a href="my_courses.jsp" class="smoothScroll">คอร์สของฉัน</a></li>  
                    <li><a href="account.jsp" class="smoothScroll">บัญชีผู้ใช้</a></li>   
                    <li><a href='logout.jsp'><i class="fa fa-sign-out"></i>ออกจากระบบ</a></li>   
                </ul>

            </div>
        </section> <br><br><br><br>

        <!-- SHOW ALL COURSES -->
        <div class="container">
            <div class="row">

                <div class="section-title">
                    <center><h2>All Courses <small>Upgrade your skills with newest courses</small></h2></center>
                </div>

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
                                <p>เรียนรู้ทักษะในการพัฒนาเว็บไซต์พื้นฐานด้วย HTML CSS, Flexbox และ CSS Grid พัฒนาเว็บไซต์เชิงโต้ตอบและแอปพลิเคชัน UI (ส่วนต่อประสานผู้ใช้) และออกแบบส่วนใช้งานหน้าเว็บไซต์ให้ทันสมัย โดยใช้ JavaScript และ HTML และเชื่อมต่อเว็บแอปพลิเคชันเพื่อสำรองข้อมูลเซิร์ฟเวอร์โดยใช้ JavaScript  </p>
                            </div>

                            <div class="courses-info">
                                <div class="courses-author">
                                    <img src="images/author-image1.jpg" class="img-responsive" alt="">
                                    <span>Mark Wilson</span>
                                </div>
                                <div class="courses-price">
                                    <form action="add_course.jsp" method="post">
                                        <input type="hidden" name="coursename" value="Front-End Web Developer">
                                        <button type="submit" class="btn btn-info" >ลงทะเบียนฟรี</button>
                                    </form>  
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
                                    <form action="add_course.jsp" method="post">
                                        <input type="hidden" name="coursename" value="Full Stack Web Developer">
                                        <button type="submit" class="btn btn-info" >ลงทะเบียนฟรี</button>
                                    </form>  
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
                                <p>เราสร้างโปรแกรมเหล่านี้เพื่อสนับสนุนนักพัฒนา Android โดยเฉพาะสำหรับผู้ที่ต้องการความสำเร็จด้วยการสร้างผลงานที่หลากหลายและสร้างแอพของคุณเองใน Google Play Store หากเป้าหมายของคุณคือการจ้างงานในฐานะนักพัฒนา Android โปรแกรมนี้เป็นสิ่งที่คุณต้องประสบความสำเร็จ</p>
                            </div>

                            <div class="courses-info">
                                <div class="courses-author">
                                    <img src="images/author-image3.jpg" class="img-responsive" alt="">
                                    <span>Catherine</span>
                                </div>
                                <div class="courses-price">
                                    <form action="add_course.jsp" method="post">
                                        <input type="hidden" name="coursename" value="Android Developer">
                                        <button type="submit" class="btn btn-info" >ลงทะเบียนฟรี</button>
                                    </form>  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- ROW2--> <br><br>

            <div class="row">
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
                                    <img src="images/author-image1.jpg" class="img-responsive" alt="iOS Developer">
                                    <span>Mark Wilson</span>
                                </div>
                                <div class="courses-price">
                                    <form action="add_course.jsp" method="post">
                                        <input type="hidden" name="coursename" value="">
                                        <button type="submit" class="btn btn-info" >ลงทะเบียนฟรี</button>
                                    </form>  
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
                                    <form action="add_course.jsp" method="post">
                                        <input type="hidden" name="coursename" value="Back-End Web Developer">
                                        <button type="submit" class="btn btn-info" >ลงทะเบียนฟรี</button>
                                    </form>  
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
                                    <span><i class="fa fa-clock-o"></i> 12 Hours</span>
                                </div>
                            </div>

                            <div class="courses-detail">
                                <h3><a href="#">Data Science</a></h3>
                                <p>สร้างความเชี่ยวชาญในการจัดการข้อมูลการสร้างภาพการวิเคราะห์เชิงทำนายการเรียนรู้ของเครื่องและวิทยาศาสตร์ข้อมูล คุณสามารถเริ่มต้นหรือก้าวหน้าอาชีพด้านข้อมูลด้วยทักษะที่คุณเรียนรู้ในโปรแกรมนี้ เริ่มรับทักษะที่มีคุณค่าได้ทันทีสร้างพอร์ตโฟลิโอเพื่อแสดงความสามารถของคุณ </p>
                            </div>

                            <div class="courses-info">
                                <div class="courses-author">
                                    <img src="images/author-image2.jpg" class="img-responsive" alt="">
                                    <span>Jessica</span>
                                </div>
                                <div class="courses-price">                       
                                    <button type="submit" class="btn btn-warning" name="submit" data-toggle="modal" data-target="#course1">1050 บาท</button>                                 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">

                <div class="col-md-4 col-sm-4">
                    <div class="item">
                        <div class="courses-thumb">
                            <div class="courses-top">
                                <div class="courses-image">
                                    <img src="images/courses-image4.jpg" class="img-responsive" alt="">
                                </div>
                                <div class="courses-date">
                                    <span><i class="fa fa-calendar"></i> 10 / 8 / 2019</span>
                                    <span><i class="fa fa-clock-o"></i> 12 Hours</span>
                                </div>
                            </div>

                            <div class="courses-detail">
                                <h3><a href="#">Artificial Intelligence</a></h3>
                                <p>คุณจะได้เรียนรู้วิธีประเมินมูลค่าทางธุรกิจของผลิตภัณฑ์ AI ได้เรียนรู้วิธีกำหนดขอบเขตและสร้างชุดข้อมูลฝึกอบรมโมเดลและประเมินผลกระทบทางธุรกิจ ระหว่างการเรียนคุณจะตรวจสอบกรณีศึกษาและตัวอย่างเพื่อช่วยให้คุณมุ่งเน้นไปที่วิธีกำหนดเมตริกเพื่อวัดมูลค่าทางธุรกิจสำหรับผลิตภัณฑ์ที่เสนอ</p>
                            </div>

                            <div class="courses-info">
                                <div class="courses-author">
                                    <img src="images/author-image1.jpg" class="img-responsive" alt="iOS Developer">
                                    <span>Mark Wilson</span>
                                </div>
                                <div class="courses-price">
                                        <button type="submit" class="btn btn-warning" name="submit"data-toggle="modal" data-target="#course2">1150 บาท</button>                                 
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
                                    <span><i class="fa fa-clock-o"></i> 12 Hours</span>
                                </div>
                            </div>

                            <div class="courses-detail">
                                <h3><a href="#">Cloud Computing</a></h3>
                                <p>วันนี้ทุกบริษัทไม่ว่าเล็กหรือใหญ่กำลังใช้ระบบคลาวด์คอมพิวติ้ง การเติบโตของเทคโนโลยีนี้สร้างความต้องการอย่างไม่น่าเชื่อสำหรับงานคอมพิวเตอร์แบบคลาวด์ตั้งแต่นักพัฒนาระบบคลาวด์และบทบาท Cloud DevOps ไปจนถึงบทบาทพิเศษเช่นสถาปนิกโซลูชั่นและวิศวกรความปลอดภัยบนคลาวด์ </p>
                            </div>

                            <div class="courses-info">
                                <div class="courses-author">
                                    <img src="images/author-image1.jpg" class="img-responsive" alt="iOS Developer">
                                    <span>Mark Wilson</span>
                                </div>
                                <div class="courses-price">
                                         <button type="submit" class="btn btn-warning" name="submit"data-toggle="modal" data-target="#course3">1250 บาท</button>                                 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <!-- Modal 1-->
        <div class="modal fade bd-example-modal-sm" id="course1" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <center><h3 class="modal-title" id="exampleModalLongTitle">ยืนยันการซื้อคอร์สเรียน</h3></center>
                    </div>
                    <div class="modal-body"><br><br>
                        ชื่อคอร์สเรียน : Data Science <br>
                        ราคา : 1050 บาท <br><hr><br>
                            <center>ชำระเงินทันทีผ่าน 
                            <div id="paypal-button-1"></div>
                            <script>
                            paypal.Button.render({
                            // Configure environment
                            env: 'sandbox',
                            client: {
                                    sandbox: 'AUbzAYU5XhzFbw1PDexh35BlTzSY-VJopGT8zuKNhXm3JAXTBp_ZOFtQBWgHXWwaPPL-Ox3hl6GZrzfF',
                            },
                            // Customize button (optional)
                            locale: 'en_US',
                            style: {
                                    size: 'medium',
                                    color: 'gold',
                                    shape: 'rect'
                             },
                            // Enable Pay Now checkout flow (optional)
                            commit: true,
                            // Set up a payment
                            payment: function(data, actions) {
                            // Make a call to the REST API to set up the payment
                                   return actions.payment.create({
                             payment: {
                             transactions: [{
                                    amount: { total: '1050', currency: 'THB' }        
                             }
                            ],
                            redirect_urls: {
                                    return_url: 'http://localhost:8080/PROJECTWEB2204/purchase.jsp?coursename=Data%20Science&amount=1050',
                            }
                            }
                            });
                            },
                            // Execute the payment
                            onAuthorize: function (data, actions) {
                                 return actions.payment.execute().then(function () {
                                    // Show a confirmation message to the buyer
                                 actions.redirect();
                                 window.alert('Thank you for your purchase! ');
                            });
                        }
                        }, '#paypal-button-1');
                        </script> 
                       
                    </center>
                    </div><br><br>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Modal 2-->
        <div class="modal fade bd-example-modal-sm" id="course2" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <center><h3 class="modal-title" >ยืนยันการซื้อคอร์สเรียน</h3></center>
                    </div>
                    <div class="modal-body"><br><br>
                        ชื่อคอร์สเรียน : Artificial Intelligence <br>
                        ราคา : 1150 บาท <br><hr><br>
                    <center>ชำระเงินทันทีผ่าน 
                           <div id="paypal-button-2"></div>
                            <script>
                            paypal.Button.render({
                            // Configure environment
                            env: 'sandbox',
                            client: {
                                    sandbox: 'AUbzAYU5XhzFbw1PDexh35BlTzSY-VJopGT8zuKNhXm3JAXTBp_ZOFtQBWgHXWwaPPL-Ox3hl6GZrzfF',
                            },
                            // Customize button (optional)
                            locale: 'en_US',
                            style: {
                                    size: 'medium',
                                    color: 'gold',
                                    shape: 'rect'
                             },
                            // Enable Pay Now checkout flow (optional)
                            commit: true,
                            // Set up a payment
                            payment: function(data, actions) {
                            // Make a call to the REST API to set up the payment
                                   return actions.payment.create({
                             payment: {
                             transactions: [{
                                    amount: { total: '1150', currency: 'THB' }        
                             }
                            ],
                            redirect_urls: {
                                    return_url: 'http://localhost:8080/PROJECTWEB2204/purchase.jsp?coursename=Artificial%20Intelligence&amount=1150',
                            }
                            }
                            });
                            },
                            // Execute the payment
                            onAuthorize: function (data, actions) {
                                 return actions.payment.execute().then(function () {
                                    // Show a confirmation message to the buyer
                                 actions.redirect();
                                 window.alert('Thank you for your purchase! ');
                            });
                        }
                        }, '#paypal-button-2');
                        </script> 
                    </center>
                    </div><br><br>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
       
        <!-- Modal 3-->
          <div class="modal fade bd-example-modal-sm" id="course3" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <center><h3 class="modal-title" >ยืนยันการซื้อคอร์สเรียน</h3></center>
                    </div>
                    <div class="modal-body"><br><br>
                        ชื่อคอร์สเรียน : Cloud Computing <br>
                        ราคา : 1250 บาท <br><hr><br>
                    <center>ชำระเงินทันทีผ่าน 
                           <div id="paypal-button-3"></div>
                            <script>
                            paypal.Button.render({
                            // Configure environment
                            env: 'sandbox',
                            client: {
                                    sandbox: 'AUbzAYU5XhzFbw1PDexh35BlTzSY-VJopGT8zuKNhXm3JAXTBp_ZOFtQBWgHXWwaPPL-Ox3hl6GZrzfF',
                            },
                            // Customize button (optional)
                            locale: 'en_US',
                            style: {
                                    size: 'medium',
                                    color: 'gold',
                                    shape: 'rect'
                             },
                            // Enable Pay Now checkout flow (optional)
                            commit: true,
                            // Set up a payment
                            payment: function(data, actions) {
                            // Make a call to the REST API to set up the payment
                                   return actions.payment.create({
                             payment: {
                             transactions: [{
                                    amount: { total: '1250', currency: 'THB' }        
                             }
                            ],
                            redirect_urls: {
                                    return_url: 'http://localhost:8080/PROJECTWEB2204/purchase.jsp?coursename=Cloud%20Computing&amount=1250',
                            }
                            }
                            });
                            },
                            // Execute the payment
                            onAuthorize: function (data, actions) {
                                 return actions.payment.execute().then(function () {
                                    // Show a confirmation message to the buyer
                                 actions.redirect();
                                 window.alert('Thank you for your purchase! ');
                            });
                        }
                        }, '#paypal-button-3');
                        </script> 
                    </center>
                    </div><br><br>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>



        <br><br><br><br>
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