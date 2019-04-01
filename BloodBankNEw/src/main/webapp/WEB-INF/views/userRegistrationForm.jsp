<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
	
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

    <link rel="stylesheet" href="css/style.css">

    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    
          <script>
         function validatePincode() {
    	  var x, text;
    	  x = document.getElementById("pincode").value;
    	  if (isNaN(x) || x.length<6 || x.length>6) {
    	    text = "*Should be 6 digits and Numerical value";
    	    document.getElementById("pinValid").innerHTML = text;
    	  }
    	  else{
    	  document.getElementById("pinValid").innerHTML ="";
    	  } 
         }
    	  
    	  function validateContact() {
        	  var x, text;
        	  x = document.getElementById("contact").value;
        	  if (isNaN(x) || x.length<10 || x.length>10) {
        	    text = "*Should be 10 digits and Numerical value";
        	    document.getElementById("contactValid").innerHTML = text;
        	  }
        	  else{
        	  document.getElementById("contactValid").innerHTML ="";
        	  }
    	  }
    	  
    	  function validateFirstName() {
        	  var x, text;
        	  x = document.getElementById("first").value;
        	  var letters = /^[A-Za-z]+$/;
        	
        	  if (x.match(letters)) {
        		  document.getElementById("firstValid").innerHTML ="";
        	  }
        	  else{
        		  text = "*Should contains only Alphabets";
          	    document.getElementById("firstValid").innerHTML = text;
        
        	  }
    	  }
    	  
    	  
    	  function validateLastName() {
        	  var x, text;
        	  x = document.getElementById("last").value;
        	  var letters = /^[A-Za-z]+$/;
        
        	  if (x.match(letters)) {
        		  document.getElementById("lastValid").innerHTML ="";
        	  }
        	  else{
        		  text = "*Should contains only Alphabets";
          	    document.getElementById("lastValid").innerHTML = text;
        
        	  }
    	  }
    	  
    	  
    	  function validateAge() {
        	  var x, text;
        	  x = document.getElementById("age").value;
        	  if (isNaN(x) || x.length<1 || x.length>3 || parseInt(x)<18 || parseInt(x)>65 ) {
        	    text = "*Should be between 18 to 65";
        	    document.getElementById("ageValid").innerHTML = text;
        	  }
        	  else{
        	  document.getElementById("ageValid").innerHTML ="";
        	  }
    	  }
    	  
    	  function validateWeight() {
        	  var x, text;
        	  x = document.getElementById("weight").value;
        	  if (isNaN(x)) {
        	    text = "*Should be a number";
        	    document.getElementById("weightValid").innerHTML = text;
        	  }
        	  else{
        	  document.getElementById("weightValid").innerHTML ="";
        	  }
    	  }
    	  
    	  
    	  function validatePassword() {
        	  var x, text;
        	  x = document.getElementById("password").value;
        	  if (x.length<8 || x.length>15) {
        	    text = "*Should be between 8 to 15 characters";
        	    document.getElementById("passwordValid").innerHTML = text;
        	  }
        	  else{
        	  document.getElementById("passwordValid").innerHTML ="";
        	  }
    	  }
    	  
    	  function validateState() {
        	  var x, text;
        	  x = document.getElementById("state").value;
        	  var letters = /^[A-Za-z]+$/;
        	  if (x.match(letters)) {
        		  document.getElementById("stateValid").innerHTML ="";
        	   
        	  }
        	  else{
        		  text = "*Should contain only alphabets";
          	    document.getElementById("stateValid").innerHTML = text;
        	  }
    	  }
    	  
    	  function validateArea() {
        	  var x, text;
        	  x = document.getElementById("area").value;
        	  var letters = /^[A-Za-z]+$/;
        	  if (x.match(letters)) {
        		  document.getElementById("areaValid").innerHTML ="";
        	  }
        	  else{
        		  text = "*Should contain only alphabets";
          	    document.getElementById("areaValid").innerHTML = text;
        	  
        	  }
    	  }
    	  </script>
    
    
    
    
    
    
    
    
    
    
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
    font-family: 'Open Sans', sans-serif;
}

.my-form
{
    padding-top: 1.5rem;
    padding-bottom: 1.5rem;
}

.my-form .row
{
    margin-left: 0;
    margin-right: 0;
}

.login-form
{
    padding-top: 3.0rem;
    padding-bottom: 1.5rem;
}

.login-form .row
{
    margin-left: 50;
    margin-right: 50;
}


/*--------------------------------           Login Card            --------------------------------*/
* {
  box-sizing: border-box;
}
html, body {
  /*margin: 0;
  padding: 0;*/
  width: 100%;
  height: 100%;
  font-family: arial, sans-serif;
}
body {
    background: rgb(239,83,80);
background: linear-gradient(90deg, rgba(239,83,80,0.9248074229691877) 27%, rgba(255,255,255,0.43461134453781514) 100%);
}
.disclamer {
  color: #fff;
  display: block;
  width: 100%;
  text-align: center;
  padding-top: 20px;
}
.perspective-container {
  perspective: 1000px;
  transform: translateZ(0);
  padding: 50px 0;
}
.login-card {
  cursor: default;
  position: relative;
  width: 550px;
  height: 680px;
  /*margin: 0 auto;*/
  font-family: 'Dosis', sans-serif;
  color: #fff;
  background-color: #c70953;
  background: radial-gradient(circle at left, rgba(253, 210, 227, .3) 35%, rgba(253, 210, 227, .2) 35%, rgba(253, 210, 227, .2) 50%, rgba(252, 186, 211, .1) 50%, rgba(253, 210, 227, .1) 65%, transparent 65%, transparent) -120px 50% / 120% no-repeat, linear-gradient(to top, rgba(0,123,255,.5), #ff0000a3);
  transition: transform 0.6s ease;
  transform-style: preserve-3d;
  transform: rotateY(0deg);
}
.login-card_turned {
  transform: rotateY(180deg);
}
.login-form {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}
.login-form_sing-in {
  z-index: 2;
  transform: rotateY(0deg);
}
.login-form_sing-up {
  transform: rotateY(180deg);
}
.login-form__header {
  text-align: center;
  padding: 50px 40px 45px;
}
.login-form__inputs-container {
  padding: 5px;
}
.login-form__input {
  width: 80%;
  padding: 10px;
  background-color: transparent;
  border: none;
  color: #fff;
  border-bottom: 1px solid currentColor;
  font-size: 1em;
}
.login-form__input::-webkit-input-placeholder {
  color: rgba(255, 255, 255, .7);
  font-size: 15px;
  transition: font 0.15s;
}
.login-form__input:-moz-placeholder {
  color: rgba(255, 255, 255, .7);
  font-size: 0.7em;
  transition: font 0.15s;
}
.login-form__input::-moz-placeholder {
  color: rgba(255, 255, 255, .7);
  font-size: 0.7em;
  transition: font 0.15s;
}
.login-form__input:-ms-input-placeholder {
  color: rgba(255, 255, 255, .7);
  font-size: 0.7em;
  transition: font 0.15s;
}
.login-form__input:focus {
  outline: none;
}
.login-form__input:focus::-webkit-input-placeholder {
  font-size: 1em;
}
.login-form__input:focus:-moz-placeholder {
  font-size: 1em;
}
.login-form__input:focus::-moz-placeholder {
  font-size: 1em;
}
.login-form__input:focus:-ms-input-placeholder {
  font-size: 1em;
}
.login-form__input:not(:first-child) {
  margin-top: 25px;
}
.login-form__input:nth-last-of-type(1) {
  margin-bottom: 10px;
}
.login-form__forgot-password {
  font-size: 0.7em;
  color: #fff;
  text-decoration: none;
  font-weight: bold;
  letter-spacing: -1px;
  line-height: 2.2em;
  float: right;
}
.login-form__forgot-password:hover, .login-form__forgot-password:focus {
  text-decoration: underline;
  outline: none;
}
.login-form__footer {
  padding: 50px 70px 0;
  font-size: 0.75em;
}
.login-form__submit {
  width: 100%;
  border: 1px solid #fff;
  padding: 10px;
  margin-bottom: 10px;
  color: #fff;
  background-color: transparent;
  text-transform: uppercase;
  border-radius: 20px;
  cursor: pointer;
  transition: background 0.3s, color 0.3s;
}
.login-form__submit:hover, .login-form__submit:focus {
  outline: none;
  background-color: #fff;
  color: #c70953;
}
.login-form__toggle {
  color: #fff;
  text-decoration: none;
  float: right;
  font-weight: bold;
  letter-spacing: 1px;
}
.login-form__toggle:hover, .login-form__toggle:focus {
  text-decoration: underline;
  outline: none;
}
.checkbox {
  display: inline-block;
  color: inherit;
}
.checkbox:focus {
  outline: none;
}
.checkbox__input {
  display: none;
}
.checkbox__box {
  color: transparent;
  display: inline-block;
  background-color: #fff;
  line-height: 12px;
  font-size: 12px;
  padding: 0 1px;
}
.checkbox__title {
  font-size: 0.7em;
  cursor: pointer;
  font-weight: bold;
  letter-spacing: -1px;
}
.checkbox__input:checked + .checkbox__box {
  color: #c70953;
}
.checkbox:focus .checkbox__title {
  text-decoration: underline;
}

.title_text{
   
    color: white;
}

    </style>

    <title>Register User Details</title>
    
       <script>
  
    </script>
</head>

<c:set var="query" value="${pageContext.request.queryString}"/>

<body>


	<c:if test="${register}">
		<script>
		  	alert("Register Successfull");
			window.location.href="login"
		</script>
		
	</c:if>








<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
    <div class="container">
        <a class="navbar-brand title_text" href="#" style="color: white">Online Blood Bank System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                        <a class="nav-link" href="#" style="font-weight: bold">About Us</a>
                    </li>
            </ul>

        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-md-6" style="margin-top: 200px">
            <h1>Blood is meant to circulate.<br>
                Pass it around.
            </h1>
            <p>
                Their are number of countries who don't have adequate number of blood suppliers and phase the challenge of blood supply.
                We are trying to make available adequate blood to the needy patients all over the world.
            </p>
            
        </div>
        <div class="col-md-6">
                <div class="perspective-container" style="margin-left: 80px">
                    <div class="login-card">
                      <form action="saveDetails" method="POST" class="login-form login-form_sing-in">
                        <header class="login-form__header">
                          <img src="https://image.flaticon.com/icons/svg/1142/1142143.svg" style="height: 80px; width: 80px;"/>
                          <br />
                          Register Here!
                        </header>
                
                        <div class="login-form__inputs-container">
                          <div class="container">
                            <div class="row">
                              <div class="col-md-6">
                          <input
                            type="email"
                            name="email"
                            placeholder="Email"
                            class="login-form__input login-form__input_required"
                            required
                          />
                              </div>
                              <div class="col-md-6">
                          <input
                            type="password"
                            name="password"
                            id="password"
                            placeholder="Password"
                            class="login-form__input login-form__input_required" onkeyup="validatePassword()"
                            required
                          />
                          <p id="passwordValid" style="color:red;font-size:12px"></p>
                        </div>
                            </div>
                          </div>


                          <div class="container">
                              <div class="row">
                                <div class="col-md-6">
                                    <input
                                    type="firstname"
                                    id="first"
                                    name="first"
                                    placeholder="FirstName"
                                    class="login-form__input login-form__input_required" onkeyup="return validateFirstName()"
                                    required
                                  />
                                   <p id="firstValid" style="color:red;font-size:12px"></p>
                                </div>
                                <div class="col-md-6">
                                    <input
                                    type="lastname"
                                    name="last"
                                    id="last"
                                    placeholder="LastName"
                                    class="login-form__input login-form__input_required" onkeyup="return validateLastName()"
                                    required
                                  />
                                   <p id="lastValid" style="color:red;font-size:12px"></p>
                                </div>
                              </div>
                            </div>


                            <div class="container">
                                <div class="row">
                                  <div class="col-md-6">
                                      <input
                                      type="contactno"
                                      name="contact"
                                      id="contact"
                                      placeholder="Contact Number"
                                      class="login-form__input login-form__input_required" onkeyup="return validateContact()"
                                      required
                                    />
                                     <p id="contactValid" style="color:red;font-size:12px"></p>
                                    
                                  </div>
                                  <div class="col-md-6">
                                      <select name="bloodgroup" class="login-form__input login-form__input_required" style="color:black">
                                          <option value="" disabled selected>Blood Group</option>
                                          <option value="O-positive">O-positive</option>
                                          <option value="O-negative">O-negative</option>
                                          <option value="A-positive">A-positive</option>
                                          <option value="A-negative">A-negative</option>
                                          <option value="B-positive">B-positive</option>
                                          <option value="B-negative">B-negative</option>
                                          <option value="AB-positive">AB-positive</option>
                                          <option value="AB-negative">AB-negative</option>
                                        </select>
                                      
                                  </div>
                                </div>
                              </div>
                          


                              <div class="container">
                                  <div class="row">
                                    <div class="col-md-6">
                                        <input
                        type="state"
                        name="state"
                        id="state"
                        placeholder="State"
                        class="login-form__input login-form__input_required" onkeyup="return validateState()"
                        required
                      />
                      <p id="stateValid" style="color:red;font-size:12px"></p>
                                    </div>
                                    <div class="col-md-6">
                                        <input
                                        type="area"
                                        name="area"
                                        id="area"
                                        placeholder="Area"
                                        class="login-form__input login-form__input_required" onkeyup="return validateArea()"
                                        required
                                      />
                                      <p id="areaValid" style="color:red;font-size:12px"></p>
                                    </div>
                                  </div>
                                </div>
                        

                                <div class="container">
                                    <div class="row">
                                      <div class="col-md-6">
                                          <input
                    type="pincode"
                    name="pincode"
                    id="pincode"
                    placeholder="Pincode"
                    class="login-form__input login-form__input_required" onkeyup=" return validatePincode()"
                    required
                  />
                   <p id="pinValid" style="color:red;font-size:12px"></p>
                                      </div>
                                      <div class="col-md-6">
                                          <select name="gender" class="login-form__input login-form__input_required" style="color:black">
                                              <option option value="" disabled selected>Gender</option>
                                              <option value="Male">Male</option>
                                              <option value="Female">Female</option>
                                              <option value="Others">Others</option>
                                            </select>
                                      </div>
                                    </div>
                                  </div>
                      

                                  <div class="container">
                                      <div class="row">
                                        <div class="col-md-6">
                                            <input
                      type="age"
                      name="age"
                      id="age"
                      placeholder="Age"
                      class="login-form__input login-form__input_required" onkeyup="return validateAge()"
                      required
                    />
                     <p id="ageValid" style="color:red;font-size:12px"></p>
                                        </div>
                                        <div class="col-md-6">
                                            <input
                                            type="weight"
                                            name="weight"
                                            id="weight"
                                            placeholder="Weight"
                                            class="login-form__input login-form__input_required" onkeyup="return validateWeight()"
                                            required
                                          />
                                         <p id="weightValid" style="color:red;font-size:12px"></p>
                                        </div>
                                      </div>
                                    </div>
                          
                        
                      
                    
                       
                        </div>
                
                        <footer class="login-form__footer">
                          <button type="submit" class="login-form__submit" onclick="check()">
                            Register
                          </button>
                         
                        </footer>
                      </form>
                
                    
                
                       
                     
                    </div>
                  </div>
        </div>
    </div>
</div>







</body>
</html>