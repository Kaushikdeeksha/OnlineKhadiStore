

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%! String data ,email;
int count;%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mail verification</title>
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
       
                               
                                
       
                            <jsp:include page="newjjspHeader.jsp"></jsp:include>
                            </div>
                        </nav>
                    </div>
                    <div class="top_nav_right">
                        <div class="cart box_1">
                            <a href="checkout.jsp"> 
                            <%
                                ResultSet resultCount = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcart where customer_id='" + session.getAttribute("id") + "'");
                                resultCount.next();
                                int count = resultCount.getInt(1);
                            %>
                            <h3>
                                <div class="total">
                                    <i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
                                    (
                                    <%=count%>
                                    items )
                                </div>
                            </h3>
                        </a>
                        <p>
                            <a href="javascript:;" class="simpleCart_empty">Empty Cart</a>
                        </p>
                    </div>
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
                <div>
                    <div class="sign-up">
                                        <h4>Email :</h4>
                                        <input type="email" onkeyup="check()" id="email"  placeholder="Type here" required="" style="width: 680px;" name="email"/>
                                  <!--  <div class="icons">
                  <span class="icon1 fas fa-exclamation"></span>
                  <span class="icon2 fas fa-check"></span>
               </div>-->
        
                                    </div>
                </div>
    </body>
</html>
<%
   try {
         email=request.getParameter("email");
             ResultSet rs=DatabaseConnection.getResultFromSqlQuery("select * from tblcustomer where email='"+ email +"' ");
             count=0;
             while(rs.next())
             {
                   count++;
             }
             if(count > 0)
           {
                data="email already exists";%>
                <script>
                    window.alert(data);
                    
                </script>
                <%
            }
             else{
                 data="you can register"; 
                 
                 %>
                <script>
                    window.alert(data);
                    
                </script>
                <%
             }                                      
        } catch (Exception ex) {
            ex.printStackTrace();
        }                                





%>