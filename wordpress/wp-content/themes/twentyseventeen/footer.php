<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.2
 */
?>
<div class="container">

</div>

<div class="type-843">
    <!-- BEGIN FOOTER -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="logo-footer col-md-3 col-sm-3 col-xs-12">
                    <div class="logo">
                        <?php the_post_thumbnail('thumbnail'); ?>
<!--                            <img src="images/footer-logo.png" alt=""/>-->
                    </div>
                    <div class="address">
                        <p> 507-Union Trade Center,Udhana Darvaja Surat </p>
                        <p> Call us: 0123-456-789</p>
                        <p><a href="#"> support@templatemela.com</a></p>
                    </div>
                    <div class="link">
                        <ul>
                            <li><a href="#" class="fa fa-facebook-square"></a></li>
                            <li><a href="#" class="fa fa-twitter-square"></a></li>
                            <li><a href="#" class="fa fa-google-plus-square"></a></li>
                            <li><a href="#" class="fa fa-pinterest-square"></a></li>
                            <li><a href="#" class="fa fa-linkedin-square"></a></li>
                            <li><a href="#" class="fa fa-rss-square"></a></li>
                            <li><a href="#"class="fa fa-share-alt-square"></a></li>
                            <li><a href="#" class="fa fa-youtube-square"></a></li>
                        </ul>
                    </div>
                </div>
                <!-- BEGIN COLUMNS -->
                <div class="columns col-md-3 col-sm-3 col-xs-12">
                    <div id="content-footer-section" class="row clearfix" style="color: #fff">
                        <div id="categories" style="text-align: center ;"><h3 class="widget-title">Categories </h3>		<ul>
                                <li><a <?php  ?></a>
                                </li>
                                <li<a style="color: #fff"href="http://localhost:82/wordpress/index.php/category/am-nhac/mp3/">Mp3</a>
                                </li>
                                <li ><a style="color: #fff" href="http://localhost:82/wordpress/index.php/category/am-nhac/mp4/">MP4</a>
                                </li>
                            </ul>
                        </div>			</div>
                </div>
                <!-- END COLUMNS -->
                <!-- BEGIN COLUMNS -->
                <div class="columns col-md-3 col-sm-3 col-xs-12">
                    <div class="title">
                        <h6>SHOP</h6>
                    </div>
                    <div class="list">
                        <ul>
                            <li><a href="#">Accessories</a></li>
                            <li><a href="#">Balcony Tables</a></li>
                            <li><a href="#">Bar Units</a></li>
                            <li><a href="#">Fine Art</a></li>
                            <li><a href="#">Beds</a></li>
                            <li><a href="#">Rules</a></li>
                        </ul>
                    </div>
                </div>
                <!-- END COLUMNS -->
                <!-- BEGIN COLUMNS -->
                <div class="columns col-md-3 col-sm-3 col-xs-12">
                    <div class="title">
                        <h6>SELLERS</h6>
                    </div>
                    <div class="list">
                        <ul>
                            <li><a href="#">Seller Login</a></li>
                            <li><a href="#">Seller Signup</a></li>
                            <li><a href="#">Seller Handbook</a></li>
                            <li><a href="#">Shipping & Refund</a></li>
                            <li><a href="#"> Wholesale Policy</a></li>
                        </ul>
                    </div>
                </div>

                <!-- END COLUMNS -->
            </div>
        </div>
        <div class="container">
            <div class="border-bottom">
            </div> 
            <div class="sub-footer">
                <div class="menu-sub">
                    <ul>
                        <li><a href="#">Site Map</a></li>
                        <li><a href="#">|</a></li>
                        <li><a href="#">Search Terms</a></li>
                        <li><a href="#">|</a></li>
                        <li><a href="#">Advanced Search</a></li>
                        <li><a href="#">|</a></li>
                        <li><a href="#">Orders and Returns</a></li>
                        <li><a href="#">|</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
                <div class="copy">
                    <p>© 2016 Magento Demo Store. All Rights Reserved.</p>
                </div>
                <div class="link-sub col-md-12 col-sm-12 col-xs-12">
                    <div class="image">
                        <img src="images/payment.png" alt=""/>
                    </div>   
                </div>
            </div>
        </div>

    </footer>
    <!-- END FOOTER -->
</div>
</div><!-- .site-content-contain -->
</div><!-- #page -->
<?php wp_footer(); ?>

