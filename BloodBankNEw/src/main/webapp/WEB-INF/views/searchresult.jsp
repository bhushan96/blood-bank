<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Search Result</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    
    <title>Search Results</title>
<style>
body {
    background: rgb(239,83,80);
background: linear-gradient(90deg, rgba(239,83,80,0.9248074229691877) 27%, rgba(255,255,255,0.43461134453781514) 100%);
}
#searchResults {
    padding-top: 50px
}
.navbar-laravel
{
    box-shadow: 0 2px 4px rgba(0,0,0,.04);
}
.navbar-brand , .nav-link, .my-form, .login-form
{
    font-family:  'Lato', sans-serif;
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
</style>

</head>
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
<a class="navbar-brand title_text" href="${pageContext.servletContext.contextPath}/home" style="color: white">Online Blood Bank System</a>
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
<body>
        <section id="#searchResults">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-wrap">
                                <br>
                                <c:if test="${fn:length(bloodAvailabiltySearchResult)==0 }">
                                	<h1 style="font-size:160%; font-family:verdana;">No Result Found</h1>
                                    <br>
                                    <a href="${pageContext.servletContext.contextPath}/requirement/form"><button>Yes</button></a>
                                    
                                    <a href="${pageContext.servletContext.contextPath}/home"><button>No</button></a>
                                    
                                </c:if>
                                <c:if test="${fn:length(bloodAvailabiltySearchResult) gt 0 }">
                                <h1 style="font-size:160%; font-family:verdana;">Searched results for blood group: <c:out value="${bloodAvailabiltySearchResult[0].blood_group }"/></h1>
                                    <br>
                               
                                
                                    
                              
        <table class="table">
        <thead>
          <tr>
           
            <th scope="col">State</th>
            <th scope="col">Area</th>
            <th scope="col">Pincode</th>
            <th scope="col">Contact Number</th>
          </tr>
        </thead>
        <tbody>
        
        <c:forEach var="result" items="${bloodAvailabiltySearchResult}">
       <tr>
         	<td>${result.state}</td>
            <td>${result.area}</td>
         	<td>${result.pincode}</td>
         	<td>${result.contact}</td> 
         	</tr>
        </c:forEach>
        </tbody>
      </table>
      
       </c:if>
    </div>
    </div>
    </div>
    </div>

</section>
</body>
</html>
	<%-- <a href="${pageContext.servletContext.contextPath}/requirement/add"><button>Add</button></a> --%>