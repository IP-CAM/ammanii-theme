<footer>

<div class="container">
  <div class="row">
    <div class="col-xs-12 col-sm-4 col-md-3">
      <ul>
        <li>INFORMATION</li>
        <?php foreach ($informations as $information) { ?>
        <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
    <div class="col-xs-12 col-sm-4 col-md-3">
      <ul>
        <li>MY ACCOUNT</li>
        <li><a href="<?php echo $account; ?>">My Account</a></li>
        <li><a href="<?php echo $order; ?>">Order History</a></li>
        <li><a href="<?php echo $wishlist; ?>">Wish List</a></li>
        <li><a href="<?php echo $newsletter; ?>">Newletters</a></li>
      </ul>
    </div>
    <div class="col-xs-12 col-sm-4 col-md-3">
      <ul>
        <li>CUSTOMER SERVICE</li>
        <li><a href="<?php echo $contact; ?>">Contact</a></li>
        <li><a href="<?php echo $return; ?>">Returns</a></li>
        <li><a href="<?php echo $sitemap; ?>">Site Map</a></li>
        <li><a href="tel:+14242987810"><i class="fa fa-phone-square"></i> 424-298-7810</a></li>
      </ul>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-3">
      <div class="social-container">
        <a href="https://www.facebook.com/ammaniijewelry" target="_blank"><span class="social-icon"><i class="fa fa-facebook"></i></span></a>
        <a href="https://www.twitter.com/AmmaniiJewelry" target="_blank"><span class="social-icon"><i class="fa fa-twitter"></i></span></a>
        <a href="https://instagram.com/ammaniijewelry/" target="_new"><span class="social-icon"><i class="fa fa-instagram"></i></span></a>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <div class="copy-container">
        &copy; 2016 Ammanii All rights reserved.
      </div>
    </div>
  </div>
  </div>
</footer>

<script src="catalog/view/theme/ammanii/js/photo-swipe/klass.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/ammanii/js/photo-swipe/code.photoswipe.jquery-3.0.5.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/ammanii/js/photo-swipe/code.photoswipe-3.0.5.min.js" type="text/javascript"></script>

<script src="catalog/view/theme/ammanii/js/magnificent/jquery.ba-throttle-debounce.js" type="text/javascript"></script>
<script src="catalog/view/theme/ammanii/js/magnificent/jquery.bridget.js" type="text/javascript"></script>
<script src="catalog/view/theme/ammanii/js/magnificent/magnificent.js" type="text/javascript"></script>

<!-- Theme Scipts -->
<script src="catalog/view/theme/ammanii/js/script.js" type="text/javascript"></script>


</body></html>