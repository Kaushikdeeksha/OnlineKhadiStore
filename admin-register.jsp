<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Customer Registration</title>
        <!-- Importing all ui libs -->
      <link rel="icon" href="assets/img/logo.png" type="image/gif" />
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
       <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script src="js/simpleCart.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <script src="js/jquery.easing.min.js"></script>
        <script src='../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
        <script src="../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
        <style>
            
  .form .field .icons{
  position: absolute;
  right: 15px;
  top: 50%;
  transform: translateY(-50%);
}
.field .icons span{
  height: 25px;
  width: 25px;
  border: 2px solid;
  border-radius: 50%;
  line-height: 25px;
  display: none;
}
form .error-text:before{
  position: absolute;
  content: '';
  height: 15px;
  width: 15px;
  background: #e74c3c;
  right: 20px;
  top: -7px;
  transform: rotate(45deg);
}
.content form .field{
  width: 100%;
  height: 45px;
  display: flex;
  position: relative;
}
form .field input{
  width: 100%;
  height: 100%;
  border: 1px solid lightgrey;
  border-radius: 5px;
  padding-left: 15px;
  font-size: 18px;
  outline: none;
}
@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
.field .icons span.icon1{
  color: #e74c3c;
  border-color: #e74c3c;
}
.field .icons span.icon2{
  color: #27ae60;
  border-color: #27ae60;
}
form .error-text{
  position: relative;
  margin: 15px 0 -5px 0;
  background: #e74c3c;
  color: #fceae8;
  font-size: 18px;
  padding: 8px;
  border-radius: 5px;
  user-select: none;
  display: none;
}</style>
    </head>
    <body>
       
        <div class="ban-top">
            <div class="container">
                <div class="top_nav_left">
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed"
                                        data-toggle="collapse"
                                        data-target="#bs-example-navbar-collapse-1"
                                        aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span> <spanclass="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                                </button>
                            </div>
                            <jsp:include page="adminHeader.jsp"></jsp:include>
                            </div>
                        </nav>
                    </div>
                    
                <div class="clearfix"></div>
            </div>
        </div>
        <br>
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-info">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body modal-spa">
                    <div class="login-grids">
                        <div class="login">
                            <div class="login-bottom">
                                <h3>Sign up for free</h3>
                                <%
                                    String success = (String) session.getAttribute("success-message");
                                    if (success != null) {
                                        session.removeAttribute("success-message");
                                %>
                                <div class='alert alert-success' id='success' style="width: 680px;">Customer
                                    Register Successfully.</div>
                                    <%
                                        }
                                        String fail = (String) session.getAttribute("fail-message");
                                        if (fail != null) {
                                            session.removeAttribute("fail-message");
                                    %>
                                <div class="alert alert-danger" id='danger' style="width: 680px;">Customer
                                    Registration Fail,Please try again</div>
                                    <%
                                        }
                                    %>
                                <form action="AdminRegister" method="post">
                                    <div class="sign-up">
                                        <h4> Name :</h4>
                                        <input type="text" placeholder="Your Name" required="" style="width: 680px;" name="name" value="">
                                    </div>
                                    <div class="sign-up">
                                        <h4>Email :</h4>
                                        <input type="email" id="email" name="email" required value="">
                                <!--   <div class="icons">
                  <span class="icon1 fas fa-exclamation"></span>
                  <span class="icon2 fas fa-check"></span>
               </div>-->
                                    </div>
                                    <div class="sign-up">
                                        <h4>Password :</h4>
                                        <input type="password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" style="width: 680px;" name="password" value="">
                                    </div>
                                    <div class="sign-up">
                                        <h4>Phone :</h4>
                                        <input type="tel" placeholder="Type here" required="" pattern="[0-9]{10}"  style="width: 680px;" name="mobile" value="">
                                    </div>
                                    <br>
                                    <div class="sign-up">
                                        <h4>State :</h4>
                                        <input type="text" placeholder="address" required="" style="width: 680px;" name="address" value="">
                                    </div>
                                    <div class="sign-up">
                                        <input type="submit" value="REGISTER NOW" style="width: 680px;">
                                    </div>
                                </form>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <script>
   var emailField = document.getElementById("email");

		// Validate the email address when the form is submitted
		document.querySelector("form").addEventListener("submit", function(event) {
			if (!isValidEmail(emailField.value)) {
				alert("Invalid email address!");
				event.preventDefault();
			}
		});

		// Function to validate email address format
		function isValidEmail(email) {
			var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
			return emailRegex.test(email);
		}
      </script>
    </body>
</html>
