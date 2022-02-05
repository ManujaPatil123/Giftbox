<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_shop.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

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
                        
                         <li class="active"><a href="Login.aspx">SignUp</a></li>
                        <li ><a href="SignIn.aspx">SignIn</a></li>

                    </ul>
                </div>

            </div>

        </div>

    </div>

        <!---Login page--->

        <div class="center-page">

            <label class="cpl-xs-11">Username:</label>
            <div class="cpl-xs-11">
            <asp:TextBox ID="txtUsername" runat="server" Class="form-control" placeholder="Enter your name"></asp:TextBox>
            </div>

            <label class="cpl-xs-11">Password:</label>
            <div class="cpl-xs-11">
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Password"></asp:TextBox>
            </div>

            <label class="cpl-xs-11">Confirm Password:</label>
            <div class="cpl-xs-11">
            <asp:TextBox ID="txtCpassword" runat="server" TextMode="Password" Class="form-control" placeholder="enter Password again"></asp:TextBox>
            </div>

             <label class="cpl-xs-11">Full Name:</label>
            <div class="cpl-xs-11">
            <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="enter Your name"></asp:TextBox>
            </div>

             <label class="cpl-xs-11">Email:</label>
            <div class="cpl-xs-11">
            <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="enter Email"></asp:TextBox>
            </div>
            
             <label class="cpl-xs-11"></label>
             <div class="cpl-xs-11">
                 <asp:Button ID="txtLogin" Class="btn btn_primary" runat="server" Text="SignUP" BackColor="#FF5050" BorderStyle="Double" OnClick="txtLogin_Click" Width="122px" />
                 <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>

        </div>
        <!---Login page End--->

         <!---Foooter Contents start--->

        <footer class="footer-pos">
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
