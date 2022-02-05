<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Online_shop.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Gift Shop</title>

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

                        <li class="active"><a href="Default.aspx">HOME</a></li>
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
                         <li ><a href="Login.aspx">SignUp</a></li>
                        <li ><a href="SignIn.aspx">SignIn</a></li>
                    </ul>
                </div>

            </div>

        </div>

        <!---image slider--->

        <div class="container">
  <h2>Carousel Example</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="Slider images/gift 1 box.jpg" alt="Los Angeles" style="width:50%;height :251px;">

          <div class="carousel-caption">
          <h3>Premium Gifts</h3>
          <p>Gift ur loved once the most premium varieties of gifts.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>
        </div>
      </div>

      <div class="item">
        <img src="Slider images/Gift2.jpg" alt="Chicago" style="width:50%;height :251px;">
           <div class="carousel-caption">
          <h3>Exotic Florals</h3>
          <p>Wide range of Exotic flowers picked and crafted with delicacy.</p>
               <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>
        </div>
      </div>
    
      <div class="item">
        <img src="Slider images/gift 3desert.jpg" alt="New york" style="width:50%;height :251px;">
           <div class="carousel-caption">
          <h3>Sweet Diries</h3>
          <p>Best quality Deserts that blows the mind.</p>
               <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>
        </div>
      </div>
    </div>

      

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>



        <!---image slider End--->

    
    </div>

        <!---Middle Contents start--->
        <hr />
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="Toys/Soft Tatya Vinchu.jpg" alt="thumb" width="140" height="140" />
                    <h2>Toys</h2>
                    <p>Tatya Vinchu</p>
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>

                </div>

                 <div class="col-lg-4">
                    <img class="img-circle" src="Florals/red-pink-roses-bouquet_1.jpg" alt="thumb" width="140" height="140" />
                    <h2>Florals</h2>
                    <p>Pink Raffia Tied Red & Pink Roses Bouquet</p>
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>

                </div>
                 <div class="col-lg-4">
                    <img class="img-circle" src="Premium Gifts/Titan watch.jpg" alt="thumb" width="140" height="140" />
                    <h2>Premium collection</h2>
                    <p>Titan Analog Black Dial Men's Watch-1793KM04</p>
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>

                </div>

            </div>
           



        </div>


              <!---Middle Contents End--->




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
