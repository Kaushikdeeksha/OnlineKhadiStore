<%@ page language="java" contentType="text/html;
         charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="com.connection.*"%>
<%! String name ,email,message,query,category;%>
<!DOCTYPE html>
<html>
    <head>
        <title>FeedBack Form</title>
        <!-- Importing all ui libs -->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script src="js/simpleCart.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" >
    <script src="js/jquery.easing.min.js"></script>
    <script src='../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
    <script src="../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
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
                                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                            </button>
                        </div>
                        <jsp:include page="header.jsp"></jsp:include>
                        </div>
                    </nav>
                </div>
                        <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-info">
                            <div class="panel-heading">Give Feedback</div>
                            <div class="panel-body">
                                <%
                    String message = (String) session.getAttribute("message");
                    if (message != null) {
                        session.removeAttribute("message");
                %>
                <div class="alert alert-danger" id="success">Thank you for your Feedback</div>
                <%
                    }
                %>
                                <form>
                                    <div class="form-group">
                                        <label>Enter Name</label> <input class="form-control" type="text" name="name" required />
                                    </div>
                                    <div class="form-group">
                                        <label>Email</label> <input class="form-control" type="text" name="email" required/>
                                    </div>
                                    <div class="form-group">
                                        <label>Choose Category</label>
                                    
                                    <select name="category">
                                        <option>Select</option>
                                                            <option>Shirt</option>
                                                            <option>Pants</option>
                                                            <option>Kurti</option>
                                                            <option>Kurta</option>
                                                            <option>Saree</option>
                                                        </select>
                                    </div>                
                                    <div class="form-group">
                                        <label>Messages</label> <textarea class="form-control" name="message" rows="4" cols="20"></textarea>
                                    
                                    </div>
                                    <input type="submit" name="submit" value="submit" class="btn btn-success" />
                                 <input type="reset" name="reset" value="reset" class="btn btn-success" />
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
<%
     name=request.getParameter("name");
        email=request.getParameter("email");
        message=request.getParameter("message");
      category=request.getParameter("category");
try   {  
      if(request.getParameter("submit")!=null)
        {

        
           query="insert into tablefeedback(name,email,message,category) values('"+name+"','"+email+"','"+message+"','"+category+"')";
        int i = DatabaseConnection.insertUpdateFromSqlQuery(query);
          
        
        if(i>0)
        {
              String success = "Product added successfully.";
                        //Adding method in session.
                        session.setAttribute("message", success);
             response.sendRedirect("Feedback.jsp");
        }
        else
        {
            out.println(" fail");
        }
        
   }
   
    }
   catch(Exception ex)
   {
       ex.printStackTrace(); }
  %>

