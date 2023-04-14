<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%! String name,email,address,phone,city,state,query ; int id;
ResultSet rs;%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Shopping System</title>
        <!-- Importing all ui libs -->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
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
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
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
                            <jsp:include page="header.jsp"></jsp:include>
                            </div>
                        </nav>
                </div>
          
                            
        
                    <div class="top_nav_right">
                        <div class="cart box_1">
                            <a href="checkout.jsp"> 
                            <%
                                ResultSet resultCount = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcustomer where id='" + session.getAttribute("id") + "'");
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
                                     </div>
        </div>
            <div class="content-wrapper">
                <div class="container">
                    <div class="row pad-botm">
                        <div class="col-md-12">
                            <h4 class="header-line" style="color: white">Account Details</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-info">
                          
                            <div class="panel-body">
                                <form role="form">
                                  <table class="table table-striped table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Name</th>
                                                    <th>Email</th>
                                                    <th>Gender</th>
                                                    <th>Mobile</th>
                                                    <th>Address</th>
                                                    <th>City</th>
                                                    <th>State</th>
                                                    <th>Pincode</th>
                                                </tr>
                                            </thead>
                               <%  
                                            Connection connection = DatabaseConnection.getConnection();
                                            Statement statement = connection.createStatement();
                                            ResultSet resultSet = statement.executeQuery("select * from tblcustomer where id='"+session.getAttribute("id") +"' ");
                                            while (resultSet.next()) {
                                        %>
                                        <tbody>
                                            <tr>
                                                <td><%=resultSet.getInt(1)%></td>
                                                <td><%=resultSet.getString("name")%></td>
                                                <td><%=resultSet.getString("email")%></td>
                                                <td><%=resultSet.getString("gender")%></td>
                                                <td><%=resultSet.getString("phone")%></td>
                                                <td><%=resultSet.getString("address")%></td>
                                                <td><%=resultSet.getString("city")%></td>
                                                <td><%=resultSet.getString("state")%></td>
                                                <td><%=resultSet.getString("pin_code")%></td>
                                            </tr>
                                        </tbody>
                                        <%
                                            }
                                        %>
                                    </table>
                                    <button type="submit" class="btn btn-success"><a href="edit_customerdetails.jsp">Update</a></button> 
                               
                           </form>
                            </div>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="Footer2.jsp"></jsp:include>
            <script src="assets/js/jquery-1.10.2.js"></script>
            <script src="assets/js/bootstrap.js"></script>
            <script src="assets/js/custom.js"></script>
    
    </body>
</html>