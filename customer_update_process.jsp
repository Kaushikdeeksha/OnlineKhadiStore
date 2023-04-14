<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%
    //Getting all the inputs from the admin
    
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    String pincode = request.getParameter("pincode");
    String phone = request.getParameter("phone");
    //Querying to the database
    int updateProduct = DatabaseConnection.insertUpdateFromSqlQuery("update tblcustomer set name='" + name + "',address='" + address + "',phone='" + phone + "',city='" +city + "',state='" + state + "',pin_code='" + pincode + "' where id='" + session.getAttribute("id")+ "'");
    if (updateProduct > 0) {
        response.sendRedirect("edit_customerdetails.jsp");
    } else {
        response.sendRedirect("#");
    }
%>