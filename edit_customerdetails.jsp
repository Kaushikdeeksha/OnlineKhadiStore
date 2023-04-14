<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Shopping System</title>
        <!-- Importing all ui libs -->
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
        <script src="jquery-3.2.1.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src='../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
        <script src="../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
        <style>
        
</style>
    </head>
    <body>
        <%
            //Checking whether customer in session or not
            if (session.getAttribute("name") != null && session.getAttribute("name") != "") {
        %>
    
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
                                    <div class="content-wrapper">
                <div class="container">
                    <div class="row pad-botm">
                        <div class="col-md-12">
                            <h4 class="header-line">Edit Account Details</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-info">
                                <div class="panel-heading">Edit Product</div>
                              <%
                                            
                                //Getting input from the admin
                                //int id = Integer.parseInt(request.getParameter("id"));
                                //Querying to database
                                ResultSet updateResult = DatabaseConnection.getResultFromSqlQuery("select * from tblcustomer where id='" +session.getAttribute("id")+ "' ");
                                while (updateResult.next()) {
                            %>
                                   
                                         <div class="panel-body">
                                <form role="form" action="customer_update_process.jsp"
                                      method="post">
                                    <div class="form-group">
                                        <label>Name</label> <input class="form-control" type="text" name="name" value="<%=updateResult.getString("name")%>"/>
                                    </div>
                                    <div class="form-group">
                                        <label> Address </label> <input class="form-control" type="text" name="address" value="<%=updateResult.getString("address")%>" />
                                    </div>
                                    <div class="form-group">
                                        <label>City</label> <input class="form-control" type="text" name="city" value="<%=updateResult.getString("city")%>" />
                                    </div>
                                    <div class="form-group">
                                        <label>State</label> <input class="form-control" type="text" style="min-height: 100px;" name="state" value="<%=updateResult.getString("state")%>" />
                                    </div>
                                    <div class="form-group">
                                        <label>Pincode</label> <input class="form-control" type="text" name="pincode" value="<%=updateResult.getString("pin_code")%>" />
                                    </div>
                                    <div class="form-group">
                                        <label>Phone no</label><input class="form-control" type="text" name="phone" value="<%=updateResult.getString("phone")%>" />
                                    </div>
                                            
                                    </div>

                                    <button type="submit" class="btn btn-success">Update</button>
                                </form>
                            </div>
                                        <%
                                }
                               
                                        %>
                        </div>
                   </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
            <script src="assets/js/jquery-1.10.2.js"></script>
            <script src="assets/js/bootstrap.js"></script>
            <script src="assets/js/custom.js"></script>
        <%
            } else {
                response.sendRedirect("customer-login.jsp");
            }
        %>
    </body>
</html>