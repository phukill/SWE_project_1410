<%-- 
    Document   : Register
    Created on : Jun 24, 2020, 11:54:23 PM
    Author     : Phu Cong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>E-Learning Course</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>

    <style>
        .login-dark {
            height:800px;
            background-image: url('https://dataismm.ai/wp-content/uploads/2019/04/machine-learning-ai-dark-blue-ss-1920-1.jpg');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .login-dark form {
            max-width:320px;
            width:90%;
            background-color:#1e2833;
            padding:40px;
            border-radius:4px;
            transform:translate(-50%, -50%);
            position:absolute;
            top:50%;
            left:50%;
            color:#fff;
            box-shadow:3px 3px 4px rgba(0,0,0,0.2);
        }

        .login-dark .illustration {
            text-align:center;
            padding:15px 0 20px;
            font-size:100px;
            color:#2980ef;
        }

        .login-dark form .form-control {
            background:none;
            border:none;
            border-bottom:1px solid #434a52;
            border-radius:0;
            box-shadow:none;
            outline:none;
            color:inherit;
        }

        .login-dark form .btn-primary {
            background:#214a80;
            border:none;
            border-radius:4px;
            padding:11px;
            box-shadow:none;
            margin-top:26px;
            text-shadow:none;
            outline:none;
        }

        .login-dark form .btn-primary:hover, .login-dark form .btn-primary:active {
            background:#214a80;
            outline:none;
        }

        .login-dark form .forgot {
            display:block;
            text-align:center;
            font-size:12px;
            color:#6f7a85;
            opacity:0.9;
            text-decoration:none;
        }

        .login-dark form .forgot:hover, .login-dark form .forgot:active {
            opacity:1;
            text-decoration:none;
        }

        .login-dark form .btn-primary:active {
            transform:translateY(1px);
        }
    </style>
    <body>
        <div class="login-dark">
            <form action="${pageContext.request.contextPath}/LoginController" method="POST" style="margin:auto">
                <h2 class="sr-only">Login Form</h2>
                <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
                <div class="form-group"><input class="form-control" type="account" name="account" placeholder="Account"></div>
                <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password"></div>     
                <div class="form-group"><input class="form-control" type="password2" name="password2" placeholder="Enter your password again"></div>    
                <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Register</button>
            </form>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
