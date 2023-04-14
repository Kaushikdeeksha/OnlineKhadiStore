<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%! String npwd,cpwd,query;%>
<!Doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script src="js/simpleCart.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <script src="js/jquery.easing.min.js"></script>
    <!-- Font Awesome Icons  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
        integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
        crossorigin="anonymous" />

    <!-- Google Fonts  -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

    <style>
        body{
         background-color: #F5C6EC;   
        }
        .box-form {
background-color: white;  
 backdrop-filter: blur(10px);
  color: black;
  padding: 1em;
  border-radius: 30px;
  max-width: 520px;
  margin-top: 70px;
  margin-bottom: 50px;
  margin-left: 380px;
}
.box-form .right {
  overflow: hidden;
}
@media (max-width: 300px) {
  .box-form .right {
    width: 50%;
    
  }
}
.box-form .right h5 {
  font-size: 3vmax;
  line-height:0;
  margin-top: 105px;
  margin-bottom: 65px;
  
 }
.box-form .right p {
  font-size: 14px;
  color: black;
}


.box-form .right input {
  width: 100%;
  padding: 20px;
  right:100px;
  margin-top: 20px;
  margin-bottom: 5px;
  font-size: 20px;
  border: none;
  outline: none;
  border-bottom: 2px solid yellow;
  
}
.box-form .right .remember-me--forget-password {
  display: flex;
  justify-content: space-between;
  align-items: center;
  right:200px;
}
.box-form .right .remember-me--forget-password input {
  margin: 0;
  right:200px;
  margin-right: 5px;
  width: auto;
}

.box-form .right button {
  margin-left:150px; 
  color: black;
  font-size: 16px;
  padding: 10px 35px;
  border-radius: 50px;
  display: inline-block;
  border: 10;
  right:50px;
  
  outline: 0;
  box-shadow: 0px 4px 20px 0px ;
  background-color: #ddd;
}

    </style>    
</head>

<body>
      <div class="ban-top">
            <div class="container">
                <div class="top_nav_left">
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed"
                                        data-toggle="collapse"
                                        data-target="#bs-example-navbar-collapse-1"
                                        aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span> <span
                                        class="icon-bar"></span> <span class="icon-bar"></span> <span
                                        class="icon-bar"></span>
                                </button>
                            </div>
                            <jsp:include page="header.jsp"></jsp:include>
                            </div>
                        </nav>
                </div>
                    </div>
      </div>
    <div class="box-form">
	<div class="left">
		<div class="overlay">
                <div>
                    
                </div>
		<span>
		<!--<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
			<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i> Login with Twitter</a>--->
		</span>
		</div>
	</div>
		<div class="right">
		<h5>Reset Password </h5>
		<div class="input">
                    <label>New Password</label>
			<input type="password" placeholder="New Password" name="npwd">
                        <label>Confirm Password</label>
			<input type="password" placeholder="Confrim Password" name="cpwd">
			
		</div>
                                        
                <div style="color: black; font-size: 2em">   <input type="submit" value="Submit" name="login" /></div>
	</div>	
</div>
                             <jsp:include page="Footer2.jsp"></jsp:include>

<%
      npwd=request.getParameter("npwd");
      cpwd=request.getParameter("cpwd");
      if(npwd.equals(cpwd)){
            query="insert into ";
      }
      query="select * from tblcustomer where email='"+email+"'";
      ResultSet rs=DatabaseConnection.getResultFromSqlQuery(query);
      if(rs.next()){
             response.sendRedirect("Resetpwd.jsp");
                }
%>
</body>

</html>