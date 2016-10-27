<!--<div id="newArrivals" class="product-list-title">New Arrivals</div>-->
<div class="row">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout product-list col-lg-4 col-md-4 col-sm-6 col-xs-12">
    <div class="product-container">
      <div class="product-thumb">
        <div class="image">
          <a class="lazy" style="padding-bottom: <?php echo ($product['img-height']/$product['img-width']*100); ?>%"
            href="<?php echo $product['href']; ?>">
            <img alt="<?php echo $product['name']; ?>"
            title="<?php echo $product['name']; ?>"
            class="img-responsive"
            data-src="<?php echo $product['thumb']; ?>"
            src="<?php echo $product['thumb']; ?>"/>
          </a>
        </div>
        
        <div>
          <div class="caption">
            <div class="name name-product"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
            <?php if ($product['price']) { ?>
            <div class="price price-product">
              <?php if (!$product['special']) { ?>
              <?php echo $product['price']; ?>
              <?php } else { ?>
              <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
              <?php } ?>
              <?php if ($product['tax']) { ?>
              <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
              <?php } ?>
            </div>
            <?php } ?>
            <!-- <div class="description"><?php echo $product['description']; ?></div> -->
          </div>
        </div>
        <div class="clear"></div>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
