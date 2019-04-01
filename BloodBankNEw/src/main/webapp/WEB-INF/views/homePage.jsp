<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dosis" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">

    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <style>
    
    @import url(https://fonts.googleapis.com/css?family=Raleway:300,400,600);
body{
    margin: 0;
    font-size: .9rem;
    font-weight: 400;
    line-height: 1.6;
    color: #212529;
    text-align: left;
    background-color: #f5f8fa;
}
.navbar-laravel
{
    box-shadow: 0 2px 4px rgba(0,0,0,.04);
}
.navbar-brand , .nav-link, .my-form, .login-form
{
    font-family:  'Lato', sans-serif;
}
/*--------------------------------           Login Card            --------------------------------*/
* {
  box-sizing: border-box;
}
html, body {
  margin: 0;
  padding: 0;
  width: 100%;
  height: 100%;
  font-family: 'Lato', sans-serif;
}
body {
    background: rgb(239,83,80);
background: linear-gradient(90deg, rgba(239,83,80,0.9248074229691877) 27%, rgba(255,255,255,0.43461134453781514) 100%);
}
.title_text{
   
    color: white;
}
    
.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  right: 0;
  background: rgb(239,83,80);
  
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}
.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #fff;
  display: block;
  transition: 0.3s;
}
.sidenav a:hover {
  color: #000;
}
.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
/*Need Button*/
button {
  outline: none;
  height: 40px;
  text-align: center;
  width: 130px;
  border-radius: 40px;
  background: #fff;
  border: 2px solid #fafafa;
  color: #042c1f;
  letter-spacing: 1px;
  text-shadow: 0;
  font-size: 12px;
  font-weight: bold;
  cursor: pointer;
  transition: all 0.25s ease;
}
button:hover {
  color: white;
  background: #FA6040;
}
button:active {
  letter-spacing: 2px;
}
.onclic {
  width: 40px;
  border-color: #bbb;
  border-width: 3px;
  font-size: 0;
  border-left-color: #1ecd97;
  animation: rotating 2s 0.25s linear infinite;
}
.onclic:after {
  content: "";
}
.onclic:hover {
  color: #1ecd97;
  background: white;
}
.validate {
  font-size: 13px;
  color: white;
  background: #1ecd97;
}
.validate:after {
  font-family: 'FontAwesome';
  content: "\f00c";
}
@keyframes rotating {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}
    </style>

        <title>Online Blood Banking System</title>
</head>
<body>
    
        <div id="mySidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                <a href="#">About</a>
                <a href="#">Contact</a>
                <a href="${pageContext.servletContext.contextPath}/logout">Logout</a>
              </div>
              <script>
                    function openNav() {
                      document.getElementById("mySidenav").style.width = "250px";
                    }
                    
                    function closeNav() {
                      document.getElementById("mySidenav").style.width = "0";
                    }
                    </script>
                       
<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
    <div class="container">
        <a class="navbar-brand title_text" href="" style="color: white">Online Blood Bank System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto"></ul>
                
                    <span style="float:right;font-size:30px;cursor:pointer; "  onclick="openNav()">&#9776; </span>
            </ul>

        </div>
    </div>
</nav>
<div class="col-md-6" style="margin-top: 200px">
        <h1>Requriment List
        </h1>
        <p>
            Their are number of countries who don't have adequate number of blood suppliers and phase the challenge of blood supply.
            We are trying to make available adequate blood to the needy patients all over the world.
        </p>
        <div class="container">
     
              <a href="availability/form"><button id="button">Need</button></a>
        </div>
    </div>
</body>
</html>