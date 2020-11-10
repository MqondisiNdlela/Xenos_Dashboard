<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Xenos_Dashboard.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Xenos | Login
    </title>
    <link href="Assets/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-image: url(Assets/images/volvo.jpg);
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .container{
            background-color: white;
            opacity: 0.955;
            padding: 20px;
            margin: 1%;
            width: 60%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            
      <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <a class="navbar-brand" href="#">
            <img src="Assets/images/logo.jpg" width="50" height="60">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto mr-auto">
                <li class="nav-item ">
                    <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/services">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/about">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="/contact">Contact Us</a>
                </li>
            </ul>
        </div>
       </nav>

            <center>
                <div class="container">
                    <h1>Log In</h1>
                    <br />
                    <hr />
                    <!-- Email Address -->
                    <div class="input-group mb-3">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="inputGroup-sizing-default">Email</span>
                      </div>
                      <input type="email" class="form-control" aria-label="Sizing example input" aria-describedby="emailHelp" />
                    </div>
                    <!-- Password -->
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">Password</span>
                      </div>
                      <input type="password" aria-label="First name" class="form-control" runat="server" id="txtPwd"/>
                    </div>
                    <hr />
                    <button type="button" class="btn btn-primary" id="btnLogIn" runat="server">Log In</button>
                    <br />
                    <a href="ForgotPassword.aspx">Forgot Password</a> <br />
                    Don't have an account? Sign up <a href="SignUp.aspx">here</a>.
                </div>
            </center>    
    </form>
    <script src="Assets/js/jquery-3.5.1.slim.min.js"></script>
    <script src="Assets/js/bootstrap.bundle.min.js"></script>
    <script>
        var btnAgree = document.getElementById("btnAgree");
        var btnSignUp = document.getElementById("btnSignUp");
        btnSignUp.disabled = true;

        function AgreeToTerms() {
            if (btnAgree.checked)
                btnSignUp.disabled = false;
            else
                btnSignUp.disabled = true;
        }
    </script>
</body>
</html>

