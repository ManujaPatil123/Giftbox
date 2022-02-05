﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_shop.UserDashbord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Dashbord</title>

<meta charset="utf-8" />
     <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/Custom.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    

       <div>
        <div>
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="nevbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle Navigation
                        </span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                   
                    <a class="navbar-brand" href="Default.aspx"> <span><img src="Icons/icons8-christmas-gift-48.png" alt="Gift BOX" height="60" /></span>Gift Box</a>

                </div>

                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">

                        <li ><a href="Default.aspx">HOME</a></li>
                         <li ><a href="#">ABOUT</a></li>
                        <li ><a href="#">CONTACT</a></li>
                        <li ><a href="#">BLOG</a></li>
                         <li class="dropdown">

                             <a href="#" class="dropdown-toggle" data-toggle="dropdown">PRODUCT<b class="caret"></b></a>
                             <ul class="dropdown-menu">
                                  <li class="dropdown-header"><a href="#">Toys</a></li>
                                 <li role="separator" class="divider"></li>
                                 <li><a href="#">Soft Toys</a></li>
                                 <li><a href="#">Cars</a></li>
                                 <li><a href="#">Dolls</a></li>
                                 <li role="separator" class="divider"></li>

                                 <li class="dropdown-header"><a href="#">Florals</a></li>
                                 <li role="separator" class="divider"></li>
                                 <li><a href="#">Flowers Bouquet</a></li>
                                 <li><a href="#">Exotic Flowers</a></li>
                                 <li><a href="#">Floral Vase</a></li>

                             </ul>

                         </li>
                         <li >

                             <asp:Button ID="btnLogout" CssClass="btn btn-default navbar-btn" runat="server" Text="Sign Out" OnClick="btnLogout_Click" />
                         </li>
                        
                    </ul>
                </div>

            </div>

        </div>
      </div>



        </div>

        <asp:Label ID="lblSuccess" runat="server" CssClass="text-success" ></asp:Label>












         <!---Foooter Contents start--->

        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back To Top</a></p>
                <p>&copy;https://github.com/ManujaPatil123 &middot; <a href="Default.aspx">HOME</a>&middot; <a href="#">About</a> &middot;  <a href="#">Contact</a> &middot; <a href="#">Products</a>    

                </p>

            </div>


        </footer>


                <!---Foooter Contents End--->

    </form>
</body>
</html>
