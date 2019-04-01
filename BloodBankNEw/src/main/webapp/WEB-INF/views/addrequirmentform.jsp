<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Blood Requirement Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
    	  </script>
      
      
      
      
</head>
<style>
    /*    --------------------------------------------------
	:: Login Section
	-------------------------------------------------- */
#login {
    padding-top: 50px
}
#login .form-wrap {
    width: 30%;
    margin: 0 auto;
}
#login h1 {
    color: #fff;
    font-size: 18px;
    text-align: center;
    font-weight: bold;
    padding-bottom: 20px;
}
#login .form-group {
    margin-bottom: 25px;
}
#login .checkbox {
    margin-bottom: 20px;
    position: relative;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    -o-user-select: none;
    user-select: none;
}
#login .checkbox.show:before {
    content: '\e013';
    color: #FA6040;
    font-size: 17px;
    margin: 1px 0 0 3px;
    position: absolute;
    pointer-events: none;
    font-family: 'Glyphicons Halflings';
}
#login .checkbox .character-checkbox {
    width: 25px;
    height: 25px;
    cursor: pointer;
    border-radius: 3px;
    border: 1px solid #ccc;
    vertical-align: middle;
    display: inline-block;
}
#login .checkbox .label {
    color: #6d6d6d;
    font-size: 13px;
    font-weight: normal;
}
#login .btn.btn-custom {
    font-size: 14px;
	margin-bottom: 20px;
}
#login .forget {
    font-size: 13px;
	text-align: center;
	display: block;
}
body {
    background: rgb(239,83,80);
background: linear-gradient(90deg, rgba(239,83,80,0.9248074229691877) 27%, rgba(255,255,255,0.43461134453781514) 100%);
}
/*    --------------------------------------------------
	:: Inputs & Buttons
	-------------------------------------------------- */
.form-control {
    color: #212121;
}
.btn-custom {
    color: #fff;
	background-color: #FA6040;
}
.btn-custom:hover,
.btn-custom:focus {
    color: #fff;
}
/*    --------------------------------------------------
    :: Footer
	-------------------------------------------------- */
#footer {
    color: #6d6d6d;
    font-size: 12px;
    text-align: center;
}
#footer p {
    margin-bottom: 0;
}
#footer a {
    color: inherit;
}
</style>
<body>
 
<!------ Include the above in your HEAD tag ---------->

<section id="login">
    <div class="container">
    	<div class="row">
    	    <div class="col-md-12">
        	    <div class="form-wrap">
                <h1>Add The Following Details</h1>
                    <form role="form" action="${pageContext.servletContext.contextPath}/requirement/add" method="post" id="login-form" autocomplete="off" modelAttribute="requirementdetails">
                        <div class="form-group">
                            <select name="blood_group" class="form-control" >
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
                     
                            <div class="form-group">
                                <select name="state" class="form-control" >
                                    <option value="" disabled selected>State</option>
                                    <option value="Punjab">Punjab</option>
                                    <option value="Shimla">Shimla</option>
                                   
                                  </select>
                            </div>
                        
                            <div class="form-group">
                                <select name="area" class="form-control" >
                                    <option value="" disabled selected>Area</option>
                                    <option value="Chandigarh">Chandigarh</option>
                                    <option value="Panchkula">Panchkula</option>
                                   
                                  </select>
                            </div>
                        <div class="form-group">
                            <label for="pincode" class="sr-only">Pincode</label>
                            <input type="text" name="pincode" id="pincode" class="form-control" placeholder="pincode" onkeyup="return validatePincode()">
                            <p id="pinValid" style="color:red;font-size:12px"></p>
                        </div>
                        
                        <div class="form-group">
                            <label for="contact" class="sr-only">Contact</label>
                            <input type="text" name="contact" id="contact" class="form-control" placeholder="contact" onkeyup="return validateContact()">
                            <p id="contactValid" style="color:red;font-size:12px"></p>
                        </div>
                        
                        <input type="submit" id="search" class="btn btn-custom btn-lg btn-block" value="Submit">
                    </form>
                  
                    <hr>
        	    </div>
    		</div> <!-- /.col-xs-12 -->
    	</div> <!-- /.row -->
    </div> <!-- /.container -->
</section>
</body>
</html>