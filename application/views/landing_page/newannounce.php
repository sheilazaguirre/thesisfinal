<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Basic -->
        <meta charset="utf-8">
        <title>Governor Andres Pascual College - Information Systems</title>
        <meta name="keywords" content="HTML5 Template" />
        <meta name="description" content="YOURStore - Responsive HTML5 Template">
        <meta name="author" content="etheme.com">
        <link rel="shortcut icon" href="<?php echo site_url('resources/my-images/gapc-favicon.ico')?>">
        <!-- Mobile Specific Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- External Plugins CSS -->
        <link rel="stylesheet" href="<?php echo site_url('resources/my-external/slick/slick.css');?>">
        <link rel="stylesheet" href="<?php echo site_url('resources/my-external/slick/slick-theme.css');?>">
        <link rel="stylesheet" href="<?php echo site_url('resources/my-external/magnific-popup/magnific-popup.css');?>">
        <link rel="stylesheet" href="<?php echo site_url('resources/my-external/bootstrap-select/bootstrap-select.css');?>">
        <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
        <link rel="stylesheet" type="text/css" href="<?php echo site_url('resources/my-external/rs-plugin/css/settings.css');?>" media="screen" />
        <!-- Custom CSS -->
        <link rel="stylesheet" href="<?php echo site_url('resources/my-css/style.css');?>">
        <link rel="stylesheet" href="<?php echo site_url('resources/my-css/xstyle.css');?>">
        <!-- Icon Fonts  -->
        <link rel="stylesheet" href="<?php echo site_url('resources/my-font/style.css');?>">
        <!-- Head Libs -->  
        <!-- Modernizr -->
        <script src="<?php echo site_url('resources/my-external/modernizr/modernizr.js');?>"></script>
        <!-- Recaptcha -->
        <script src='https://www.google.com/recaptcha/api.js'></script>
    </head>
    <body class="index">                  
        <div id="loader-wrapper">
            <div id="loader">
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
            </div>
        </div>
        <!-- Back to top -->
        <div class="back-to-top"><span class="icon-keyboard_arrow_up"></span></div>
        <!-- /Back to top -->
        <!-- mobile menu -->
        <div class="hidden">
            <nav id="off-canvas-menu">              
                <ul class="expander-list">              
                    <li>
                        <span class="name">
                            <span class="expander">-</span>
                            <a href="<?php echo base_url()?>landing_page/index"><span class="act-underline">HOME</span></a>
                        </span>
                    </li>                   
                    <li>
                        <span class="name">
                            <span class="expander">-</span>
                            <a href="<?php echo base_url()?>landing_page/about"><span class="act-underline">ABOUT US</span></a>
                        </span>                     
                    </li>
                    <li>
                        <span class="name">
                            <span class="expander">-</span>
                            <a href="<?php echo base_url()?>landing_page/admission"><span class="act-underline"><span class="act-underline">ADMISSION</span></span></a>
                        </span>
                    </li>
                    <li>
                        <span class="name">
                            <span class="expander">-</span>
                            <a href="<?php echo base_url()?>landing_page/contact"><span class="act-underline">CONTACT US</span></a>
                        </span>
                    </li>                   
                    <li>
                        <span class="name">
                            <span class="expander">-</span>
                            <a href="<?php echo site_url('landing_page/application')?>"><span class="act-underline">APPLICATION<span class="badge badge--menu">NEW</span></span></a>
                        </span>
                    </li>
                    <li>
                        <span class="name"><span class="expander">-</span>
                            <a href="<?php echo base_url()?>landing_page/faculty"><span class="act-underline">FACULTY LOGIN</span></a>
                        </span>                     
                    </li>       
                </ul>
            </nav>
        </div>      
        <!-- /mobile menu -->
        <!-- HEADER section -->
        <div class="header-wrapper">
            <header id="header">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-6 col-xl-7">
                            <!-- logo start --> 
                            <a href="index"><img class="logo replace-2x img-responsive" src='<?php echo site_url('resources/my-images/header-logo.png')?>'  alt=""/> </a> 
                            <!-- logo end --> 
                        </div>
                        <div class="col-sm-8 col-md-8 col-lg-6 col-xl-5 text-right">
                            <!-- slogan start -->
                            <div class="slogan"> </div>
                            <!-- slogan end -->                         
                            <div class="settings">
                                <!-- currency start -->
                                <!-- currency end --> 
                                <!-- language start -->
                                <!-- language end --> 
                            </div>
                        </div>
                    </div>
                </div>
                <div class="stuck-nav">
                    <div class="container offset-top-5">
                        <div class="row">
                            <div class="pull-left col-sm-9 col-md-9 col-lg-10">
                                <!-- navigation start -->
                                <nav class="navbar">
                                    <div class="responsive-menu mainMenu">                                  
                                        <!-- Mobile menu Button-->
                                        <div class="col-xs-2 visible-mobile-menu-on">
                                            <div class="expand-nav compact-hidden">
                                                <a href="#off-canvas-menu" class="off-canvas-menu-toggle">
                                                    <div class="navbar-toggle"> 
                                                        <span class="icon-bar"></span> 
                                                        <span class="icon-bar"></span> 
                                                        <span class="icon-bar"></span> 
                                                        <span class="menu-text">MENU</span> 
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        <!-- //end Mobile menu Button -->
                                        <ul class="nav navbar-nav">
                                            <li class="dl-close"><a href="#"><span class="icon icon-close"></span>close</a></li>                                        
                                            <li class="dropdown dropdown-mega-menu">                                            
                                                <a href="<?php echo base_url()?>landing_page/index" class="dropdown-toggle" data-toggle="dropdown"><span class="act-underline">HOME</span></a>
                                            </li>                                           
                                            <li class="dropdown dropdown-mega-menu">
                                                <span class="dropdown-toggle extra-arrow"></span>
                                                <a href="<?php echo base_url()?>landing_page/about" class="dropdown-toggle" data-toggle="dropdown"><span class="act-underline">ABOUT US</span></a>
                                            </li>
                                            <li class="dropdown dropdown-mega-menu">
                                                <span class="dropdown-toggle extra-arrow"></span>
                                                <a href="<?php echo base_url()?>landing_page/admission" class="dropdown-toggle" data-toggle="dropdown"><span class="act-underline">ADMISSION</span></a>
                                            </li>
                                            <li class="dropdown dropdown-mega-menu">
                                                <span class="dropdown-toggle extra-arrow"></span>
                                                <a href="<?php echo base_url()?>landing_page/contact" class="dropdown-toggle" data-toggle="dropdown"><span class="act-underline">CONTACT US</span></a>
                                            </li>
                                            <li class="dropdown dropdown-mega-menu">
                                                <span class="dropdown-toggle extra-arrow"></span>
                                                <a href="<?php echo site_url('landing_page/application')?>"" class="dropdown-toggle" data-toggle="dropdown"><span class="act-underline">APPLICATION<span class="badge badge--menu">NEW</span></span></a>
                                            </li>
                                            <li class="dropdown dropdown-mega-menu dropdown-two-col">
                                                <span class="dropdown-toggle extra-arrow"></span>
                                                <a href="<?php echo base_url()?>landing_page/faculty" class="dropdown-toggle" data-toggle="dropdown"><span class="act-underline">FACULTY LOGIN</span></a>
                                            </li>
                                            </li>
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                            <!-- navigation end -->
                            <div class="pull-right col-sm-3 col-md-3 col-lg-2">
                                <div class="text-right">    
                                    <!-- search start -->
                                    <!-- search end -->                                     
                                    <!-- account menu start -->
                                    <!-- account menu end -->
                                    <!-- shopping cart start -->
                                    <!-- shopping cart end -->          
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
        </div>
        <!-- End HEADER section -->
       
        <!-- CONTENT section -->
    <div id="pageContent">
            <!-- category section -->
            <!-- /category section -->
            <!-- featured products -->
            <div class="content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-xl-8">
                            <!-- title -->
                            <div class="title-box">
                                <h2 class="text-center text-uppercase title-under">ANNOUNCEMENTS</h2>
                            </div>
                            <!-- /title -->
                            <div class="product-listing carousel-products-mobile row">
                                <?php foreach($announcements as $a){ ?>
                                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3 col-xl-3">
                                    <!-- product -->
                                    <div class="product product--zoom">
                                        <div class="product__inside">
                                            <!-- product image -->
                                            <div class="product__inside__image">
                                                <img src="<?php echo base_url ('uploads/announcements/' . $a['announceFile']); ?>" height="335" width="270" alt="<?php echo $a['announceTitle']; ?>"> 
                                                <!-- quick-view --> 
                                                <a href="#" data-toggle="modal" data-target="#quickViewModal" class="quick-view"><b><span class="icon icon-visibility"></span> VIEW</b> </a> 
                                                <!-- /quick-view --> 
                                            </div>
                                            <!-- /product image --> 
                                            <!-- TITLE -->
                                            <div class="product__inside__price price-box"><?php echo $a['announceTitle']; ?></div>
                                            <!-- /TITLE -->
                                            <!-- DESCRIPTION -->
                                            <div class="product__inside__name">
                                                <h2><a href="product.html"><?php echo $a['announceDetail']; ?></a></h2>
                                            </div>
                                            <!-- /DESCRIPTION --> 
                                            <!-- product review --> 
                                            <!-- visible only in row-view mode -->
                                                <!-- /product info --> 
                                                <!-- /product rating --> 
                                        </div>
                                    </div>
                                    <!-- /product --> 
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="pull-right">
                            <?php echo $this->pagination->create_links(); ?>                    
                        </div>
                        <!-- lookbook -->
                        <!-- /lookbook -->
                    </div>
                </div>
            </div>
              


            <hr>


        <!-- End CONTENT section -->
        <!-- FOOTER section -->
        <footer>
            <!-- footer-data -->
            <div class="container inset-bottom-60">
                <div class="row" >
                    <div class="col-sm-12 col-md-5 col-lg-6 border-sep-right">
                        <div class="footer-logo hidden-xs">
                            <!--  Logo  --> 
                            <a class="logo" href="index"> <img class="replace-2x" src="<?php echo site_url('resources/my-images/footer-logo.png')?>"  alt="YOURStore"> </a> 
                            <!-- /Logo --> 
                        </div>
                        <div class="box-about">
                            <div class="mobile-collapse">
                                <h4 class="mobile-collapse__title visible-xs">ABOUT US</h4>
                                <div class="mobile-collapse__content">
                                <p>GAPC Information Systems is a thesis project created by Shaun Pascual, Beper Ong, Sheila Zaguirre, Miko Villanueva for the completion of the requirements of their ISPROJ2 subject.</p>
                                </div>
                            </div>
                        </div>
                        <!-- subscribe-box -->
                        <!-- /subscribe-box --> 
                    </div>
                    <div class="col-sm-12 col-md-7 col-lg-6 border-sep-left">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="mobile-collapse">
                                    <h4 class="text-left  title-under  mobile-collapse__title">INFORMATION</h4>
                                    <div class="v-links-list mobile-collapse__content">
                                        <ul>
                                            <li><a href="about">About Us</a></li>
                                            <li><a href="support-24">Customer Service</a></li>
                                            <li><a href="faq">Privacy Policy</a></li>
                                            <li><a href="site-map">Site Map</a></li>
                                            <li><a href="contact">Contact Us</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /footer-data --> 
            <div class="divider divider-md visible-xs visible-sm visible-md"></div>
            <!-- social-icon -->
            <!-- /social-icon --> 
            <!-- footer-copyright -->
            <div class="container footer-copyright">
                <div class="row">
                    <div class="col-lg-12"> <a href="index"><span>GAPC </span>Information Systems</a> &copy; 2018 . All Rights Reserved. </div>
                </div>
            </div>
            <!-- /footer-copyright --> 
            <a href="#" class="btn btn--ys btn--full visible-xs" id="backToTop">Back to top <span class="icon icon-expand_less"></span></a> 
        </footer>
        <!-- END FOOTER section -->
        <!-- Button trigger modal -->
      

        <!--================== modal ==================-->
        <!-- modalAddToCart -->
        <!-- /modalAddToCart -->
        
        <!-- /modalLoginForm-->

        <!-- Modal (quickViewModal) -->
        <!-- Modal (quickViewModal) -->     
        <div class="modal  modal--bg fade"  id="quickViewModal">
          <div class="modal-dialog white-modal">
            <div class="modal-content container">
                <div class="modal-header">
                 <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="icon icon-clear"></span></button>
                 </div>
                <!--  -->
                <div class="product-popup">
                    <div class="product-popup-content">
                    <div class="container-fluid">
                        <div class="row product-info-outer">
                            <div class="col-xs-12 col-sm-5 col-md-6 col-lg-6">
                                <div class="product-main-image">
                                    <div class="product-main-image__item"><img src="<?php echo base_url ('uploads/announcements/' . $a['announceFile']); ?>" height="686" width="553" alt="<?php echo $a['announceTitle']; ?>" height="335" width="270" alt=""></div>
                                </div>
                            </div>
                            <div class="product-info col-xs-12 col-sm-7 col-md-6 col-lg-6">
                                <div class="product-info__title">
                                    <h2><?php echo $a['announceTitle']; ?></h2>
                                </div>
                                <div class="divider divider--xs product-info__divider"></div>
                                <div class="product-info__description">
                                    <div class="product-info__description__text"><?php echo $a['announceDetail']; ?></div>
                                </div>
                                <div class="product-info__description">
                                    <div class="product-info__description__text">Announced by: <?php echo $a['userName']; ?></div>
                                </div>
                                <div class="product-info__description">
                                    <div class="product-info__description__text"><?php echo $a['dateUploaded']; ?></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
                <!-- / -->
            </div>
          </div>
        </div>
        <!-- / Modal (quickViewModal) -->       
        
        <!-- / Modal (quickViewModal) -->
        <!-- Modal (newsletter) -->     
        
        <!-- / Modal (newsletter) -->
        <!--================== /modal ==================-->
        




        <!-- jQuery 1.10.1--> 
        <script src="<?php echo site_url('resources/my-external/jquery/jquery-2.1.4.min.js')?>"></script> 
        <!-- Bootstrap 3--> 
        <script src="<?php echo site_url('resources/my-external/bootstrap/bootstrap.min.js')?>"></script> 
        <!-- Specific Page External Plugins --> 
        <script src="<?php echo site_url('resources/my-external/slick/slick.min.js')?>"></script>
        <script src="<?php echo site_url('resources/my-external/bootstrap-select/bootstrap-select.min.js')?>"></script>  
        <script src="<?php echo site_url('resources/my-external/countdown/jquery.plugin.min.js')?>"></script> 
        <script src="<?php echo site_url('resources/my-external/countdown/jquery.countdown.min.js')?>"></script>        
        <script src="<?php echo site_url('resources/my-external/instafeed/instafeed.min.js')?>"></script>       
        <script src="<?php echo site_url('resources/my-external/magnific-popup/jquery.magnific-popup.min.js')?>"></script>          
        <script src="<?php echo site_url('resources/my-external/isotope/isotope.pkgd.min.js')?>"></script> 
        <script src="<?php echo site_url('resources/my-external/imagesloaded/imagesloaded.pkgd.min.js')?>"></script>
        <script src="<?php echo site_url('resources/my-external/colorbox/jquery.colorbox-min.js')?>"></script>
        <!-- SLIDER REVOLUTION 4.x SCRIPTS  --> 
        <script type="text/javascript" src="<?php echo site_url('resources/my-external/rs-plugin/js/jquery.themepunch.tools.min.js')?>"></script> 
        <script type="text/javascript" src="<?php echo site_url('resources/my-external/rs-plugin/js/jquery.themepunch.revolution.min.js')?>"></script> 
        <!-- Custom --> 
        <script src="<?php echo site_url('resources/my-js/custom.js')?>"></script>          
        <script src="<?php echo site_url('resources/my-js/js-index-01.js')?>"></script>     
    </body>
</html>