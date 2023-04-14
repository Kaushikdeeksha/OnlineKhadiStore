<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Feedback view</title>
        <!-- Importing all ui libs -->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
       <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css"  />
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script src="js/simpleCart.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <script src="js/jquery.easing.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
        <style>
            .table td, .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
  padding: 15px!important;
}
.table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
  font-size: 0.9em;
  color: black;
}
.table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
  border-top: none !important;
}
.tab-content > .active {
  display: block;
  visibility: visible;
}
.label {
  font-weight: 300 !important;
}
.label {
  padding: 4px 6px;
  border: none;
  text-shadow: none;
}
h4.typ1{
	margin-bottom:15px;
}
h5.typ1{
	margin-bottom:15px;
}
.progress {
  height: 8px;
  box-shadow: none;
}
.progress {
  overflow: hidden;
  height: 20px;
  margin-bottom: 20px;
  background-color: #eeeeee;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
}
        </style>
    <body>
        
        <jsp:include page="adminHeader.jsp"></jsp:include>
            <div class="content-wrapper">
                <div class="container-fluid">
                    <div class="row pad-botm">
                        <div class="col-md-12">
                            <h4 class="header-line">View Customers</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="panel panel-success">
                                <div class="panel-heading">View Customers</div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                  <!--  <th>Id</th>-->
                                                    <th>Name</th>
                                                    <th>Registered Email-Id</th> 
                                                    <th>Category</th>
                                                    <th>Message</th>
                                                    
                                                    </tr>
                                            </thead>
                                        <%
                                            Connection connection = DatabaseConnection.getConnection();
                                            Statement statement = connection.createStatement();
                                            ResultSet resultSet = statement.executeQuery("select * from tablefeedback");
                                            while (resultSet.next()) {
                                        %>
                                        <tbody>
                                            <tr>
                                                
                                                <td><%=resultSet.getString("name")%></td>
                                                <td><%=resultSet.getString("email")%></td>
                                                <td><%=resultSet.getString("category")%></td>
                                                <td><%=resultSet.getString("message")%></td>
                                               
                                               
                                            </tr>
                                        </tbody>
                                        <%
                                            }
                                        %>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
        <jsp:include page="footer.jsp"></jsp:include>
            <script src="assets/js/jquery-1.10.2.js"></script>
            <script src="assets/js/bootstrap.js"></script>
            <script src="assets/js/custom.js"></script>
        
    </body>
</html>