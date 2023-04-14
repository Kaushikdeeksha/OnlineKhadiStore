<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String message=request.getParameter("message");
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root"," ");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into tablefeedback(name,email,message)values('"+name+"','"+email+"','"+message+"')");
             if (i >0) {
                        String success = "Feedback added successfully.";
                        //Adding method in session.
                        session.setAttribute("message", success);
                        //Response send to the admin-add-product.jsp
                        response.sendRedirect("Feedback.jsp");
                    }
        }
        catch(Exception e)
        {
           e.printStackTrace();
        }
 %>
