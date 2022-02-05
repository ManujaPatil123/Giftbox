<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoverPassword.aspx.cs" Inherits="Online_shop.RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Your Password y</title>

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
                         
                        <li  ><a href="SignIn.aspx">SignIn</a></li>
                    </ul>
                </div>

            </div>

        </div>
      </div>

    </div>


        <div class="container">
            <div class="form-horizontal">
                <br />
                 <br />
                 <br />
                 <br />
                 <br />
                <h2>Reset Password</h2>
                <hr />
                <h3> </h3>

                <div class="form-group">


                     <asp:Label ID="lblmsg" CssClass="col-md-2 control-label" runat="server"  Visible="False" Font-Bold="True" Font-Size="X-Large"></asp:Label>


                </div>

                <div class="form-group">
                    <asp:Label ID="lblNewPassword" CssClass="col-md-2 control-label" runat="server" Text="Your New Password" Visible="False"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtNewPassword" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPassword" CssClass="text-danger" runat="server" ErrorMessage="Enter new password" ControlToValidate="txtNewPassword" ForeColor="Red"></asp:RequiredFieldValidator>



                    </div>

                </div>



                 <div class="form-group">
                    <asp:Label ID="lblConfirmPassword" CssClass="col-md-2 control-label" runat="server" Text="Confirm New Password" Visible="False"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtConfirmPassword" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" CssClass="text-danger" runat="server" ErrorMessage="Confirm new password" ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ErrorMessage="Password does not match...Please try again" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:CompareValidator>


                    </div>

                </div>





















                <div class="form-group">
                    <div class="col-md-2">  </div>


                     <div class="col-md-6">

                         <asp:Button ID="btnresetPass" CssClass="btn btn-default" runat="server" Text="Reset" Visible="False" OnClick="btnresetPass_Click"  />

                            
                     </div>




                </div>


            </div>

        </div>









    </form>
     <!---Foooter Contents start--->

        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back To Top</a></p>
                <p>&copy;https://github.com/ManujaPatil123 &middot; <a href="Default.aspx">HOME</a>&middot; <a href="#">About</a> &middot;  <a href="#">Contact</a> &middot; <a href="#">Products</a>    

                </p>

            </div>


        </footer>


                <!---Foooter Contents End--->



</body>
</html>
