
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
   
    <script src="https://kit.fontawesome.com/31149d48b0.js" ></script>
    <link href="https://colorhunt.co/palette/ede9d5e7ab9adf7857617143">
     <link rel="icon" href="assets/img/logo.png" type="image/gif" />
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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="js/jquery.easing.min.js"></script>
    <script src='../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
    <script src="../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>

    <title>about us </title>
<style>

/* hero background image */
.hero_title {
    padding-top: 5%;
    font-size: 4.5rem;
    text-align: center;
    font-weight: bolder;
 
}
.bgimage {
    background: url('img_about/b.png');
    background-size:cover;
    height: 120vh ;
    padding-left: 20%;
    padding-right: 20%;
    
    position:relative;            
      
}
.back{
    background-color: #74d2f7;
}
.khadi{
    background-color: rgb(245, 198, 236);
    text-align: justify;
   
}
#bv{
    background-color: rgb(245, 198, 236);
    text-align: justify;
  
}
#imag{
background-color: rgb(245, 198, 236);

}
h2{
    text-align: center;
    font-weight: 900;
}

h3{
    padding-left: 10%;
    text-align: justify;
    font-size: 1.5rem;
    font-weight: bold;
}
h4{
    text-align: justify;
    font-size: 1.5rem;
    font-weight: bold; 
}

p{
    
    text-align: justify;
    font-size: medium;
    font-weight: bold;
    padding-left: 10%;
    padding-right: 20%;
}
.likhadi{
    list-style-type:none;
    padding-left: 10%;
    padding-right: 20%;
    font-weight: 700;
}



.card-title {
    text-align: center;
}
.card:hover .servicesIcon {
    color: #008000;
}


.resources-item {
   
    background: #f6f6f6;
    cursor: pointer;
    margin: 30px 0;
    padding: 7px 7px 20px;
    text-align: center;
  }
  .resources-item .resources-category-image {
    height: 200px;
    overflow: hidden;
  }
  .resources-description h4 {
    font-size: 22px;
    text-transform: uppercase;
    font-weight: 400;
    font-family: "open sans condensed", sans-serif;
  }
  .resources-item .resources-description p {
    margin-top: 20px;
    font-size: 13px;
  }
  .photos-page.filter-bar {
    margin-top: 100px;
  }
  .input-group #table_filter.form-control {
    border-radius: 0;
    border-color: rgb(245, 198, 236);
    line-height: 20px;
  }
  .selectize-dropdown [data-selectable], 
  .selectize-dropdown .optgroup-header {
    background-color: rgb(245, 198, 236);
  }
  .photos-page.filter-bar input#table_filter {
    height: 45px;
    border-radius: 0;
    line-height: 22px;
    border-color: rgb(245, 198, 236);
  }
  .input-group-btn #searchBtn {
    height: 45px;
    padding: 0 16px;
    font-size: 1.4rem;
    background-color: #00bff3;
    color: rgb(245, 198, 236);
  }
  .form-group .selectize-input {
    height: 45px !important;
    border-radius: 0;
  }
  .form-group .selectize-input .item {
    line-height: 26px;
  }
  .photos-bottom-section ul.pagination {
    float: right;
  }
  .photos-bottom-section #pagingTotal.news-results {
    margin-top: 0;
    text-align: center;
  }
  .photos-bottom-section .news-filter {
    margin-top: 5px;
  }
  .photos-blue-border {
    margin-top: 30px;
  }
  .photos-bottom-section {
    margin-bottom: 80px;
  }
  .pagination>li:last-child>a, 
  .pagination>li:last-child>span {
    border-radius: 0;
  }
  .selectize-input.items {
    border-radius: 0;
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
                                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
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
                            //Getting all cart details of the customer
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
                        <a href="javascript:;" class="simpleCart_empty">My Cart</a>
                    </p>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <section class="bgimage" id="home">
        <div class="container-fluid1">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 hero-text">
                    <h2 class="hero_title">KHADI ,THE PRIDE OF NATION </h2>    
                </div>
            </div>
        </div>
    </section>
    <br><br><br>
<section id="back">
    <section class="khadi">
        <div>
            <br><br><br>
            <h2>Khadi</h2>
            <p>
                <ul>
                    <h3>
                        What is khadi?
                    </h3>
                    <li class ="likhadi">
                        khadi can refer to any natural fabric that is hand-spun and handwoven, be it cotton, silk, jute or wool.
                    </li>
                    <li class ="likhadi">
                        While mill-made cloth is essential to satisfy the textile demands of the Indian market, khadi is a precious craft deeply intertwined with India?s story. More importantly, it is highly sustainable.
                    </li>
                    <h3> Why khadi?</h3>
                    <li class ="likhadi">
                        The spinning of khadi uses no machines or energy and thus has a low carbon footprint.
                        A metre of khadi fabric consumes three litres of water, while one metre of mill-produced fabric requires 55 litres of the precious resource.
                         Plus, khadi clusters also generate direly needed income to rural Indian communities.
                    </li>
                    <h3 >
                        Khadi and Fashion ?
                    </h3>
                    <li class ="likhadi">
                        Today, it is part of the solution for the major environmental crisis the world is facing.
                         With sustainable fashion now becoming part of mainstream conversations, 
                        Indian consumers have become open to embracing clothing made out of eco-friendly raw materials. 
                    </li>
                    <h3 >
                        Any Government Organisation? 
                    </h3>
                    <li class ="likhadi">
                        Government organisations like The Khadi & Village Industries Commission (KVIC) and the Ministry of Micro, 
                        Small and Medium Enterprises (MSME) have been giving the textile a serious push since 2018,
                    </li>
                </ul>
            </p>
        </div>
        <br><br><br>
    </section>
    <br>
    <br>
    <br>

    <section  id="bv">
        <br><br><br>
            <h2 >
                Banasthali and Khadi
            </h2>
            <p>
              
         
                Economic empowerment is to make women take economic decisions and act on them. Women are
                    the nucleus of the family and responsible for the change , transformation and mobilization.
                  
                   Acknowledging this fact and also women's individuality , BANASTHALI VIDYAPITH make interventions
                    for their economic empowerment.
               Khadi is not only a fabric, it is a lifestyle. Khadi wearing is an
                    integral part of life at Banasthali. Khadi is a symbol of self-reliance and empowerment of women.
                   Manufacturing and dying of khadi are encouraging women empowerment and making them financially
                    stronger. As a result, it contributes to the improvement of the nation. 
         

        </p>
        <br><br><br>
    </section>
    <br><br>
        <section id="imag">
            <div class="container">
                <div class="popup-gallery">
                  <div class="row">
                    <div class="col-md-4">
                      <div class="resources-item">
                        <div class="resources-category-image">
                          <img class="img-responsive" alt="" src="img_about/k1.jpg"></a>
                        </div>
                        
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="resources-item">
                        <div class="resources-category-image">
                          <img class="img-responsive" alt="" src="img_about/k2.jpg"></a>
                        </div>
                       
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="resources-item">
                        <div class="resources-category-image">
                          <img class="img-responsive" alt="" src="img_about/k3.jpg"></a>
                        </div>
                        
                      </div>
                    </div>
                    <div class="col-md-4">
                        <div class="resources-item">
                          <div class="resources-category-image">
                            <img class="img-responsive" alt="" src="img_about/k7.jpg"></a>
                          </div>
                          
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="resources-item">
                          <div class="resources-category-image">
                            <img class="img-responsive" alt="" src="img_about/k5.jpg"></a>
                          </div>
                          
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="resources-item">
                          <div class="resources-category-image">
                            <img class="img-responsive" alt="" src="img_about/k4.jpg"></a>
                          </div>
                          
                        </div>
                      </div>
                  </div>
                </div>
              </div>
         
    </section>
  <br><br>
    </section>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>