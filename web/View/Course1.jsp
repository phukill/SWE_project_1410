<%-- 
    Document   : Course
    Created on : Jun 23, 2020, 7:32:08 PM
    Author     : Phu Cong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <title>E-learning courses</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        html,body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
        .w3-sidebar {
            z-index: 3;
            width: 250px;
            top: 43px;
            bottom: 0;
            height: inherit;
        }
        #span1{
            background: #ffc107!important;
            padding-left: 13px;
            padding-right: 13px;
            margin-left: -7px;
            margin-right: -7px;
        }
        body{         
            font-family: initial;
        }
        .henry{
            background-image: url('https://image.freepik.com/free-photo/design-flat-lay-image-workspace-desk-with-office-supplies-yellow-background_42682-16.jpg');
            background-size: cover;
            padding-bottom: 200px;
            padding-top: 150px;
        }
        #evolution{
            background-image: url('https://www.analyticstraining.ie/img/app1.jpg');
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            margin-bottom: 20px;
        }
        #learning{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        #color1{
            border-top: 8px solid #bbb;
            border-radius: 5px;
            background-color: #f44336;
        }
        .one{
            background-image: url('https://www.christianleadersinstitute.org/wp-content/uploads/2015/01/Screen-Shot-2015-01-24-at-9.29.23-AM.png');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .two{
            background-image: url('https://www.merittrac.com/sites/default/files/top-7-soft-skills-can-boost-employability-2019-and-beyond.png');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .three{
            background-image: url('https://i2.wp.com/psychlearningcurve.org/wp-content/uploads/2019/12/skills.png?fit=1000%2C563');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .four{
            background-image: url('https://www.wileymetal.com/wp-content/uploads/2018/09/digital-manufacturing-1080x675.jpg');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .five{
            background-image: url('https://prolinkedmag.com/wp-content/uploads/2016/02/3-Hacks-to-Improve-Public-Speaking-Skills.jpg');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .six{
            background-image: url('https://arts.uottawa.ca/english/sites/arts.uottawa.ca.english/files/career-english-graphic.jpg');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        h3{
            background-color: #e3e3e3;
            margin-right: 45px;
        }
        #eng{
            padding-left: 50px;          
        }
        #eng1{
            padding-left: 50px; 
        }
        input[type=submit] {
            padding:5px 15px; 
            background:#ccc; 
            border:0 none;
            cursor:pointer;
            -webkit-border-radius: 5px;
            border-radius: 5px; 
            background-color:darkgray;
        }
        span{
            background-color: greenyellow;
        }
        #scripts{
            color: #000!important;
            background-color: #f1f1f1!important;
        }
    </style>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="Course1.jsp">E-learning course</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="RegisterForLogin.jsp">Sign-up</a></li>
                </ul>
                <button class="btn btn-danger navbar-btn "><a href="NewLogin.jsp">Login</a></button>
            </div>
        </nav>
        <!-- Hidden Sidebar (reveals when clicked on menu icon)-->
        <nav class="w3-sidebar w3-animate-right w3-xlarge" style="display:none;padding-top:150px;right:0;z-index:2; background-image: url('https://i.pinimg.com/originals/2b/78/cc/2b78cc425ff3919e4abf0bf2c29de532.jpg')" id="mySidebar">
            <a href="javascript:void(0)" onclick="closeNav()" class="w3-button w3-black w3-xxxlarge w3-display-topright" style="padding:0 12px;">
                <i class="fa fa-remove"></i>
            </a>    
            <div class="w3-bar-block w3-center">
                <a href="Course1.jsp" class="w3-bar-item w3-button w3-text-white w3-hover-black" onclick="closeNav()">Home</a>
                <a href="#team" class="w3-bar-item w3-button w3-text-white w3-hover-black" onclick="closeNav()">About</a>
                <a href="profileuser.html" class="w3-bar-item w3-button w3-text-white w3-hover-black" onclick="closeNav()">Profile</a>
                <a href="mycourse.html" class="w3-bar-item w3-button w3-text-white w3-hover-black" onclick="closeNav()">My courses</a>
            </div>
        </nav>

        <!-- Menu icon to open sidebar -->
        <span class="w3-button w3-top w3-white w3-xxlarge w3-text-grey w3-hover-text-black" style="width:auto;right:0;" onclick="openNav()"><i class="fa fa-bars"></i></span>

        <!-- Overlay effect when opening sidebar on small screens -->
        <div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

        <!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
        <div class="w3-main">

            <div class="w3-row w3-padding-64" id='evolution'>
                <div class="w3-twothird w3-container"
                     style="padding-left: 300px; padding-bottom: 585px;">
                    <h1 w3-text-lime style="text-align: center;" data-animatation-in="fadeInUp" data-animation-out="animation-out fadeOut" class id='learning'>Learning is the <span id="span1">Evolution</span> of the Mind</h1>
                    <p></p>
                </div>
            </div>
            <!-- Team Container -->
            <div class="henry">
                <div class="w3-container w3-padding-64 w3-center" id="team">
                    <h2>About the author of this website's course</h2>
                    <p style="font-size: 150%">Meet the founder: the one true king!</p>
                </div>
                <div class="w3-row"><br>
                    <div class="w3-center">
                        <img src="https://i.pinimg.com/236x/72/0d/1c/720d1cd22cca123483c451eb8cd588cf.jpg" alt="Boss" style="width:8%" class="w3-circle w3-hover-opacity">
                        <h3 style="background-color: orange; width: 20%; margin-left: 610px; border-bottom-style: solid;">Công Phú</h3>
                        <p>Current Job: Software-Engineer 
                        <p>Sub: Web-designer</p>
                    </div>
                </div>
            </div>
            <div style="margin-top: 20px; width: 100%; height: 10px; border-bottom: 1px solid #e3e3e3; text-align: center; margin-bottom: 30px;">
                <span id="span1" style="font-size: 15px; background-color: #ffffff; padding: 0px 90px;">
                    -----------------
                </span>
            </div>
            <div class="w3-row" style="background-image: url('https://i.pinimg.com/originals/7d/0b/25/7d0b25b065091c9c88d1e8f39dbbe7f8.jpg')">
                <div class="w3-twothird w3-container" id="firstcourse">
                    <div class="container-fluid bg-3 text-center"> 
                        <h1 class="w3-text-deep-orange" id='work' style="text-align: center; margin-bottom: 50px; "><b style="padding-left:500px; ">Recommended courses</b></h1>
                        <div class="row">
                            <div class="col-sm-4" id="eng" style="margin-right: 200px; margin-left: 100px">
                                <img class="one" width="300" height="300"><br>
                                <h3 class="w3-text-dark-gray" style="text-align: center; margin-bottom: 50px; width: 115%;"><a href="https://www.w3schools.com/w3css/default.asp" target="_blank" class="w3-hover-green"><b>English basic for everybody</b></a>
                                    <p style="text-align: center;">----------</p>
                                    <br>This is a basic course for anyone who want to start at nothing, etc...
                                    <br> <span>Price: 29.99$</span>
                                    <br> <input class="w3-hover-green" type="submit" value="Enroll"/>
                                </h3>

                            </div>

                            <div class="col-sm-4" id="eng" style="">
                                <img class="two" width="300" height="300"><br>
                                <h3 class="w3-text-dark-gray" style="text-align: center; margin-bottom: 50px; width: 115%;"><a href="https://www.coursera.org/learn/problem-solving" target="_blank" class="w3-hover-green"><b>Soft-skills for everybody</b></a>
                                    <p style="text-align: center;">----------</p>
                                    <br>Six courses cover business communications, public speaking, critical thinking and problem solving, teamwork, and visual presentations.
                                    <br> <span>Price: 19.99$</span>
                                    <br> <input class="w3-hover-green" type="submit" value="Enroll"/>
                                </h3>

                            </div>

                            <div class="col-sm-4" id="eng" style="margin-right: 200px; margin-left: 100px">
                                <img class="three" width="300" height="300"><br>
                                <h3 class="w3-text-dark-gray" style="text-align: center; margin-bottom: 50px; width: 115%;"><a href="https://www.coursera.org/learn/introduction-psychology" target="_blank" class="w3-hover-green"><b>Introduction to Psychology</b></a>
                                    <p style="text-align: center;">----------</p>
                                    <br>This course tries to answer these questions and many others, providing a comprehensive overview of the scientific study of thought and behavior.
                                    <br> <span>Price: 39.99$</span>
                                    <br> <input class="w3-hover-green" type="submit" value="Enroll"/>
                                </h3>

                            </div>

                            <div class="col-sm-4" id="eng" style="">
                                <img class="four" width="300" height="300"><br>
                                <h3 class="w3-text-dark-gray" style="text-align: center; margin-bottom: 50px; width: 115%;"><a href="https://www.w3schools.com/w3css/default.asp" target="_blank" class="w3-hover-green"><b>Digital Manufacturing & Design Technology Specialization</b></a>
                                    <p style="text-align: center;">----------</p>
                                    <br>Nine courses – developed with input from the manufacturing industry – touch on Industry 4.0 and its components, including digital manufacturing and design practices, the concept of the digital thread, the Internet of Things and Big Data.
                                    <br> <span>Price: 59.99$</span>
                                    <br> <input class="w3-hover-green" type="submit" value="Enroll"/>
                                </h3>

                            </div>

                            <div class="col-sm-4" id="eng" style="margin-right: 200px; margin-left: 100px">
                                <img class="five" width="300" height="300"><br>
                                <h3 class="w3-text-dark-gray" style="text-align: center; margin-bottom: 50px; width: 115%;"><a href="https://www.coursera.org/specializations/public-speaking" target="_blank" class="w3-hover-green"><b>Dynamic Public Speaking Specialization</b></a>
                                    <p style="text-align: center;">----------</p>
                                    <br>Good speaking is your most enduring job skill. This four-course specialization will provide you with the instruction, experience, and practice to develop and deliver compelling presentations.
                                    <br> <span>Price: 34.99$</span>
                                    <br> <input class="w3-hover-green" type="submit" value="Enroll"/>
                                </h3>

                            </div>

                            <div class="col-sm-4" id="eng" style="">
                                <img class="six" width="300" height="300"><br>
                                <h3 class="w3-text-dark-gray" style="text-align: center; margin-bottom: 50px; width: 115%;"><a href="https://www.coursera.org/learn/careerdevelopment" target="_blank" class="w3-hover-green"><b>English for Career Development</b></a>
                                    <p style="text-align: center;">----------</p>
                                    <br>This course is designed for non-native English speakers who are interested in advancing their careers in the global marketplace.  In this course, you will learn about the job search, application, and interview process in the United States.
                                    <br> <span>Price: 24.99$</span>
                                    <br> <input class="w3-hover-green" type="submit" value="Enroll"/>
                                </h3>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="w3-row w3-padding-64" id='scripts' style="background-image: url('https://png.pngtree.com/thumb_back/fw800/background/20190429/pngtree-simple-opening-learning-background-image_110171.jpg')">
                <div class="w3-twothird w3-container" style="font-size: 150%;">
                    <h1 class="w3-text-deep-orange" style="text-align: center;">Improving better</h1>
                    <p style="text-align: center;" >Our accomplishment by doing lots of beautiful things. Including creating courses !</p>
                </div>
                <p><a href="#work" class="w3-button w3-black"><i class="fa fa-th"> </i> View Our Works</a></p>
                <div class="w3-col m3">
                    <img class="w3-image w3-round-large" src="https://campustechnology.com/-/media/EDU/CampusTechnology/2020-images/20200316edtechtools.jpg" alt="Buildings" width="700" height="394">
                </div>  
            </div>
        </div>

        <!-- Pagination -->
        <div class="w3-center w3-padding-64">
            <div class="w3-bar">
                <a class="w3-button w3-black" href="#">1</a>
                <a class="w3-button w3-hover-black" href="#">2</a>
                <a class="w3-button w3-hover-black" href="#">»</a>
            </div>
        </div>

        <footer id="myFooter">
            <div class="w3-container w3-theme-l4 w3-padding-64">
                <h4>© 2020 E-Courses Learning Inc. All rights reserved.</h4>
            </div>

            <div class="w3-container w3-theme-l1">
                <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">Công Phú</a></p>
            </div>
        </footer>

        <!-- END MAIN -->
    </div>

    <script>
        // Open and close sidebar
        function openNav() {
            document.getElementById("mySidebar").style.width = "25%";
            document.getElementById("mySidebar").style.display = "block";
        }

        function closeNav() {
            document.getElementById("mySidebar").style.display = "none";
        }
    </script>

</body>
</html>
