<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!DOCTYPE html>
<html>
    <head>
    <meta charset="ISO-8859-1">
            
        <title>ZEXA BANK </title>
        

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        

<style>
*{
    margin: 0;
    padding: 0;
}


.header
{
    height: 100vh;
}

.navbar-style
{
    box-shadow: 0 5px 10px #efefef;

}

.logo
{
    height: 48px;
    padding: 2px 10px;
}

.icon-bar
{
    background: blue;
}

li a
{
    color: #333;
}
.big-text
{
    font-size: 42px;
    margin: 20px 0;
    color: darkorange;
}

.big-text1
{
    font-size: 16px;
    margin: 20px 0;
    color: rgb(139, 115, 114);
}

.big-text2
{
    font-size: 16px;
    margin: 20px 0;
    color: rgb(52, 52, 240);
}


.big-text3
{
    font-size: 26px;
    margin: 20px 0;
    color: darkorange;
}

.big-text4
{
    font-size: 17px;
    margin: 20px 0;
    color: black;
}

.big-text5
{
    font-size: 18px;
    margin: 20px 0;
    color: black;
}


a.btn
{
    margin: 30px 10px;
    width: 150px;
    padding: 10px;
}


a.btn-first
{
    background-color: darkorange;
    color: #fff;
}
a.btn-second
{
    background: transparent;
    border: 1px solid darkorange;
    color: #333;
}
a.btn-hover
{
    background: darkorange;
    border: none;
    color: #fff;
    box-shadow: 5px 5px 10px #999999;
    transition:   0.3s;
}
.banner-info, .banner-image
{
    margin: 30px 0;
}

.navbar {
  overflow: hidden;
  background-color: #333;
  position: fixed;
  top: 0;
  width: 94.5%;
}

.navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 10px 16px;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background: #ddd;
  color: black;
}

.main {
  padding: 16px;
  margin-top: 30px;
  height: 1500px; /* Used in this example to enable scrolling */
}



  </style>
    </head>

    <body>
            <a name="home"></a>
            <div class="header" id="myHeader">
            <nav class="navbar fixed-top navbar-style">
                    <div class="container">
                <div class="navbar-header">

                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#micon">

                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        
                        
                        
                    </button>
                  
                     </a> <b>Bank with us !</b>

                </div>
                
                <div class=" navbar" id="micon">
                <ul class="nav navbar-nav navbar-right">
                
            <li style='padding-left : 40px' ><a href ="#HOME">HOME</a></li>
                    <li style='padding-left : 40px' ><a href="#ABOUT US">ABOUT  US</a></li>
                    <li style='padding-left : 40px' ><a href="#CONTACT">CONTACT</a></li>
                    
                </ul>
                

                
                </div>
            </div>
            </nav>

            <div class="container">
            <div class="row">
                
                   

                <div class="col-sm-6 banner-info">
                    <p class="big-text"><b><br>ZEXA BANK</b></p>
                    <h4><p style='padding-left : 220px'class="big-text2">With you every step..</p></h4>

                    <a class="btn btn-first" href="user/loginForm">Customer Login</a><br><br>
                    <a class="btn btn-first" href="customer/showForm">Register a Customer</a><br><br>
                    <a class="btn btn-first" href="account/showForms">Open Account</a><br><br>
                    <a class="btn btn-first" href="customer/list">View Customer Details</a><br><br>
                     <a class="btn btn-first" href="admin/delete">Admin Login</a><br><br>
                     <a class="btn btn-first" href="account1/log"> Log</a><br><br>

                </div>
                <div class="col-sm-6 banner-info">
                <img src="back.jpg" class="img-responsive">
                </div>
                </div>
                </div>
                
        </header>
        
        <div>
            
                <hr>

            </div>
            <div>
            <a name="about us"></a>
            <h1><p style='padding-left : 120px'class="big-text3"><b>ABOUT  US</b></p></h1>
            <p style='padding-left : 220px'class="big-text4"><em>At Zexa Bank we pride ourselves on our high customer satisfaction and financial strength, which reflects in our credit ratings.Zexa Branch was established in 1997 and has a longstanding expertise in servicing</em></p>
            
            <p style='padding-left : 220px'ul>
                    <p style='padding-left : 220px' class="big-text5" li> <em>Corporate Banking</em></p></li>
                    <p style='padding-left : 220px' class="big-text5" li> <em>Business Banking</em></p></li>
                    <p style='padding-left : 220px' class="big-text5" li> <em>Private Banking</em></p></li>
                    <p style='padding-left : 220px' class="big-text5" li> <em>Offering to corporate and Business Customers</em></p></li>



                    </ul>
                    <p style='padding-left : 220px'class="big-text4"><em>For corporate customers we are a full-scale branch offering a complete range of local and international products and services. Our local knowledge of the Indian banking market combined with our Zexa Bank Group corporate banking capabilities and award winning electronic banking system gives us the ability to service customers with an achromatic angle.</em></p>
                    
                    <p style='padding-left : 220px'class="big-text4"><em><b>Offering to Private customers</b></em><p></p>
                    <p style='padding-left : 220px'class="big-text4"><em>For private customers we offer a full range of private banking products including Mortgages, Savings, Current Account banking and Insurance. We are a team with Nordic members who have proficient knowledge of the home as well as UK market and servicing customers in their native language.</em></p>
                    
                    </em></p>



        </div>
        
        <hr>
        <div>
                <a name="contact"></a>
                <h1><p style='padding-left : 120px'class="big-text3"><b>CONTACT</b></p></h1>
                <p style='padding-left : 220px'class="big-text4"><em>Interested in partnering with <b>ZEXA</b> to realize your next big innovation? Please get in touch below and let us know how we can help.<br> For more details contact us : 
                    0100-1255-6666-123(Toll Free Number)<br> For FAQ : 01200-1255-6666-124 <br> Email :<b>zexaqueries@zexa.com</b>
                    <br></em></p>




        

                <div class="footer">
                        <hr>
                        <p style='padding-left : 520px'class="big-text4">© Zexa Bank ---Powered Site - Developed By Immortal Thinkers -- All rights reserved.</p>
                      </div>
                      
    </body>
</html>