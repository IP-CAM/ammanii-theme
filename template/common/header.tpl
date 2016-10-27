<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>" />
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content= "<?php echo $keywords; ?>" />
    <?php } ?>

    <!-- Needed for prod 
    <?php if ($icon) { ?>
        <link href="<?php echo $icon; ?>" rel="icon"/>
    <?php } ?> -->

    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
    
    <?php foreach ($styles as $style) { ?>
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
    <?php } ?>
    
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js" type="text/javascript"></script>

    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>
    

    <?php foreach ($scripts as $script) { ?>
        <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    

    <?php foreach ($analytics as $analytic) { ?>
        <?php echo $analytic; ?>
    <?php } ?>

    <link href="http://allfont.net/allfont.css?fonts=montserrat-light" rel="stylesheet" type="text/css" />

    <link href="catalog/view/javascript/jquery/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="catalog/view/theme/ammanii/stylesheet/magnificent.css" rel="stylesheet">
    <link href="catalog/view/theme/ammanii/js/jquery.bxslider/jquery.bxslider.css" rel="stylesheet">
    <link href="catalog/view/theme/ammanii/stylesheet/photoswipe.css" rel="stylesheet">
    <link href="catalog/view/theme/ammanii/js/fancybox/jquery.fancybox.css" rel="stylesheet">

    <link href="catalog/view/theme/ammanii/stylesheet/stylesheet.css" rel="stylesheet">
    <link href="catalog/view/theme/ammanii/stylesheet/product.css" rel="stylesheet">

</head>
<body class="<?php echo $class; ?>">
<div class='header'>

    <div class="header-logo-container">
        <a href="<?php echo $home; ?>">
            <img src="catalog/view/theme/ammanii/image/ammanii-logo-cropped.jpg">
        </a>
    </div>
    
    <div class="header-links-container container">
        <div class="row row-vertical-center">
            
            <div class="header-link col-xs-12 col-sm-2 col-md-2 col-md-offset-1 col-lg-offset-2">
                <a href="<?php echo $categories[0]['href']; ?>">shop</a>
            </div>

            <div class="header-link header-dropdown col-xs-12 col-sm-3 col-md-2">
                <a>collections <i class="fa fa-caret-down"></i></a>
                <ul>
                    <?php if ($categories) { ?>
                        <?php foreach ($categories as $cat) { ?>
                            <li>
                                <a href="<?php echo $cat['href']; ?>">
                                    <?php echo $cat['name']; ?>
                                </a>
                            </li>
                        <?php } ?>
                    <?php } ?>
                </ul>
            </div>

            <div class="header-link col-xs-12 col-sm-2 col-md-2">
                <a href="index.php?route=information/lookbooks">lookbook</a>
            </div>
            <div class="header-link col-xs-12 col-sm-2 col-md-2">
                <a href="index.php?route=information/information&information_id=4">about us</a>
            </div>
            <div class="header-link col-xs-12 col-sm-2 col-md-2">
                <?php echo $cart; ?>
            </div>
        </div>
    </div>
</div>
<script>
$(function() {
    $(window).on('scroll', function() {
        var scrollOffset = $(window).scrollTop();
        if (scrollOffset > 0) {
            $('.header').addClass('highlight-header');
        } else {
            $('.header').removeClass('highlight-header');
        }
    });
});
</script>
<div class="fixed-header-margin"></div>

