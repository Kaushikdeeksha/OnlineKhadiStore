<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!-- Defining Header for the user/customer -->
<div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav menu__list  ">
        
        <li class="active menu__item menu__item--current" style="list-style: none;
			padding: 1px 4px;"><a class="menu__link" href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
        <li class=" menu__item" style="list-style: none;
			padding: 1px 4px;"><a class="menu__link" href="products.jsp">Products</a></li>
            <%
                if ((String) session.getAttribute("name") != null) {
            %>
        <li class="menu__item" style="list-style: none;
			padding: 1px 4px;"><a class="menu__link" style="flex: 30%;
                          
		" href="my-orders.jsp">My Orders</a></li>
                  <li class="menu__item" style="list-style: none;
			padding: 2px 6px;"><a class="menu__link" href="CustomerAccount.jsp"> Account</a></li>
                <li class="menu__item" style="list-style: none;padding: 2px 6px;"><a class="menu__link" style="flex: 50%;
                           
			color: black;" href="Feedback.jsp">Feedback</a></li>
        <li class="menu__item"><a class="menu__link" href="logout.jsp">Logout</a></li>
            <%
            } else {
            %>
        <li class=" menu__item" style="list-style: none;
			padding: 1px 4px;"><a class="menu__link" href="AboutUs.jsp">About Us</a></li>
        <li class="menu__item" style="list-style: none;
			padding: 1px 4px;"><a class="menu__link" href="customer-login.jsp"> Login</a></li>
        <li class="menu__item" style="list-style: none;
			padding: 1px 4px;"><a class="menu__link" href="customer-register.jsp"> Register</a></li>

       <!-- <li class="menu__item"><a class="menu__link" href="admin-login.jsp">Admin Login</a></li>-->
            <%
                }
            %>
    </ul>
</div>